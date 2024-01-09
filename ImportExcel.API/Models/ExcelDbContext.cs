using Microsoft.EntityFrameworkCore;

namespace ImportExcel.API.Models
{
    public class ExcelDbContext : DbContext
    {
        public ExcelDbContext(DbContextOptions<ExcelDbContext> options) : base(options) 
        {
            
        }

        public DbSet<EntityStudents> Entities { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<EntityStudents>().ToTable("EntityStudents");

            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<EntityStudents>().HasKey(e => e.Student_Id); // Remplacez "Id" par le nom de votre clé primaire
        }
    }
}
