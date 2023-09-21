using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace webappsql.Models.Data
{
    public class PgConnectionConfig
    {
        public string ConnectionUri { get; set; }

        public string Username { get; set; }

        public string Password { get; set; }
    }
}
