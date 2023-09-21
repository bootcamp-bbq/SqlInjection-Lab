using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;

namespace webappsql.Models.Data
{
    public class MsSQLDatabase : IDatabase
    {
        private readonly string _connectionString;

        public MsSQLDatabase(string connectionString)
        {
            _connectionString = connectionString;
        }

        public IList<Product> Search(string searchString)
        {
            List<Product> productColl = new List<Product>();
            using (var conn = SqlClientFactory.Instance.CreateConnection())
            {
                conn.ConnectionString = _connectionString;

                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @$"SELECT * FROM Product WHERE [Name] LIKE '%{searchString}%'";

                    conn.Open();

                    using (DbDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection))
                    {
                        while (reader.Read())
                        {
                            string id = reader.GetString(0);
                            string name = reader.GetString(1);
                            string price = reader.GetString(2);

                            productColl.Add(new Product
                            {
                                Id = id,
                                Name = name,
                                Price = price
                            });
                        }
                    }

                    if (conn.State != ConnectionState.Closed)
                        conn.Close();
                }
            }
            return productColl;
        }
    }
}