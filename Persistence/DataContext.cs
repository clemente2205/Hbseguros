using Domain;
using Microsoft.EntityFrameworkCore;

namespace Persistence
{
    internal class DataContext : DbContext
    {
        #region Singleton
        private DataContext() { }

        private static DataContext instance = null;
        public static DataContext Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DataContext();
                }
                return instance;
            }
        }

        #endregion Singleton

        #region Methods

        public DataContext(DbContextOptions options) : base(options)
        {
        }

        public DbSet<Activity> Activities { get; set; }

        #endregion Methods
    }
}
