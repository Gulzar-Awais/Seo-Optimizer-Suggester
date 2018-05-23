using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace theme.Models
{
    public class mydb:DbContext
    {
        public mydb() : base("mycon") {}

        public DbSet<user> us { get; set; }
        public DbSet<Registration> registration { get; set; }
        public DbSet<users> usrs { get; set; }

    }
}