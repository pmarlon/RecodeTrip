using Microsoft.EntityFrameworkCore;
using RecodeTrip.Models;

namespace RecodeTrip.Models
{
    public class Contexto : DbContext

    {
        public DbSet<Destino> Destinos { get; set; }

        public DbSet<Promocao> Promocoes { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(connectionString: @"Server=localhost;Database=RecodeTripDB;Integrated Security=True");
        }

        public DbSet<RecodeTrip.Models.Contato> Contato { get; set; }
    }
 
}
