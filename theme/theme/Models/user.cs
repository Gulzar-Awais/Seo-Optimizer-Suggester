using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace theme.Models
{
    public class user
    {
        [Key]
        public int id { get; set; }
        [Required]
        public string name { get; set; }
        public string address { get; set; }
        public int contact { get; set; }
        public Registration registration { get; set; }
    }
}