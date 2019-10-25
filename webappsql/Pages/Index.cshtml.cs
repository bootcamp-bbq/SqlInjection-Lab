using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;
using webappsql.Models;

namespace webappsql.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;

        private readonly IDatabase _db;

        public IList<Product> ProductColl { get; set; }

        [BindProperty(SupportsGet = true)]
        public string SearchString { get; set; }

        public IndexModel(ILogger<IndexModel> logger, IDatabase db)
        {
            _logger = logger;
            _db = db;
        }

        public void OnGet()
        {
            ProductColl = _db.Search(SearchString);
        }
    }
}
