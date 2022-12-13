using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SQLite;

namespace Sas_Bogdan_lab7bun.Models
{
    class ShopList
    {
        [PrimaryKey, AutoIncrement]
        public int ID { get; set; }


        [MaxLength(250), Unique]
        public string Description { get; set; }
        public DateTime Date { get; set; }

    }
}
