CREATE TABLE [dbo].[Product]
(
	[Id] varchar(100) NOT NULL PRIMARY KEY,
	[Name] varchar(100) not null,
	[Price] varchar(100) not null
)

INSERT INTO [Product]
(
    [Id],
    [Name],
    [Price]
)
VALUES
(
    '1',
    'Hammer',
    '12.3'
)

INSERT INTO [Product]
(
    [Id],
    [Name],
    [Price]
)
VALUES
(
    '2',
    'Driver-Drills',
    '16.84'
)

INSERT INTO [Product]
(
    [Id],
    [Name],
    [Price]
)
VALUES
(
    '3',
    'Hammer Drills',
    '22.3'
)

INSERT INTO [Product]
(
    [Id],
    [Name],
    [Price]
)
VALUES
(
    '4',
    'Rotary Drills',
    '109.95'
)




CREATE TABLE [dbo].[Users]
(
	[Id] varchar(100) NOT NULL PRIMARY KEY,
	[Name] varchar(100) not null,
	[Password] varchar(100) not null
)

INSERT INTO [Users]
(
    [Id],
    [Name],
    [Password]
)
VALUES
(
    '1',
    'admin',
    'adminpassword'
)