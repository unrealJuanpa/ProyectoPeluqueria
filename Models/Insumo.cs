//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProyectoPeluqueria.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Insumo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Insumo()
        {
            this.Retirar_producto = new HashSet<Retirar_producto>();
            this.Registro_compra = new HashSet<Registro_compra>();
        }
    
        public int Id_insumo { get; set; }
        public string Nombre_insumo { get; set; }
        public string Descripción { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Retirar_producto> Retirar_producto { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Registro_compra> Registro_compra { get; set; }
    }
}
