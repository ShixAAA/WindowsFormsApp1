using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace WindowsFormsApp1
{
    public partial class Model1 : DbContext
    {
        private static Model1 cont;

        public static Model1 getContext()
        {
            if (cont == null) cont = new Model1();
            return cont;
        }
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<Users> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }   
    }
}
