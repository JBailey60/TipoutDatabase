namespace TipoutDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TipoutHistory")]
    public partial class TipoutHistory
    {
        public int Id { get; set; }

        public int ServerNumber { get; set; }

        [Column(TypeName = "money")]
        public decimal? Tipout { get; set; }

        public int InputServerID { get; set; }

        public DateTime Date { get; set; }

        public int JobID { get; set; }

        public int ServerID { get; set; }

        public virtual Jobs Jobs { get; set; }

        public virtual ServersTable ServersTable { get; set; }
    }
}
