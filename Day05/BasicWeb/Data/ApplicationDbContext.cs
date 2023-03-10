using BasicWeb.Models;
using Microsoft.EntityFrameworkCore;

namespace BasicWeb.Data
{
    public class ApplicationDbContext : DbContext
    {
        /// <summary>
        /// Db 접속하고 관리하기 위한 총괄 클래스
        /// </summary>
        /// <param name="options"></param>
        public ApplicationDbContext(DbContextOptions options) : base(options)
        {

        }

        public DbSet<Category> Categories { get; set; }
    }
}
