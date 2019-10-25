FROM mcr.microsoft.com/dotnet/core/aspnet:3.0-buster-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.0-buster AS build
WORKDIR /src
COPY ["webappsql.csproj", ""]
RUN dotnet restore "./webappsql.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "webappsql.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "webappsql.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .

#ENTRYPOINT ["dotnet", "webappsql.dll"]
CMD ASPNETCORE_URLS=http://*:$PORT dotnet webappsql.dll