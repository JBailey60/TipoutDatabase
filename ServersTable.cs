namespace TipoutDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ServersTable")]
    public partial class ServersTable
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ServersTable()
        {
            TipoutHistory = new HashSet<TipoutHistory>();
        }

        public int ID { get; set; }

        [Required]
        [StringLength(30)]
        public string NameFirst { get; set; }

        [Required]
        [StringLength(30)]
        public string NameLast { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TipoutHistory> TipoutHistory { get; set; }
    }
}
