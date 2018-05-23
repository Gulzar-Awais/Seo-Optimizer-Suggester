using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
namespace theme.Models
{
    public class Registration
    {
        [ForeignKey ("usr")]
        public int id { get; set; }

        public user usr { get; set; }
        
    }
}