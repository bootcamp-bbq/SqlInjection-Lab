using System.Collections.Generic;

namespace webappsql.Models
{
    public interface IDatabase
    {
        IList<Product> Search(string searchString);
    }
}