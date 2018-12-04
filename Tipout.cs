namespace TipoutDatabase
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Tipout : DbContext
    {
        public Tipout()
            : base("name=Tipout")
        {
        }

        public virtual DbSet<Jobs> Jobs { get; set; }
        public virtual DbSet<ServersTable> ServersTable { get; set; }
        public virtual DbSet<TipoutHistory> TipoutHistory { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Jobs>()
                .HasMany(e => e.TipoutHistory)
                .WithRequired(e => e.Jobs)
                .HasForeignKey(e => e.JobID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ServersTable>()
                .HasMany(e => e.TipoutHistory)
                .WithRequired(e => e.ServersTable)
                .HasForeignKey(e => e.InputServerID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TipoutHistory>()
                .Property(e => e.Tipout)
                .HasPrecision(19, 4);
        }
    }
}
