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
    
    public partial class Rol_empleado
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Rol_empleado()
        {
            this.Empleado = new HashSet<Empleado>();
        }
    
        public int Id_rol_empleado { get; set; }
        public string Nombre_rol_empleado { get; set; }
        public string descripcion { get; set; }
        public int nivel_acceso { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Empleado> Empleado { get; set; }
    }
}
