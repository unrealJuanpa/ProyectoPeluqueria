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
    
    public partial class Retirar_producto
    {
        public int Id_retirar_producto { get; set; }
        public System.DateTime Fecha_retiro { get; set; }
        public int Unidades_Retira { get; set; }
        public Nullable<int> Id_insumo { get; set; }
        public string CUI_empleado { get; set; }
        public Nullable<int> Id_retiro_producto { get; set; }
    
        public virtual Empleado Empleado { get; set; }
        public virtual Insumo Insumo { get; set; }
        public virtual Razon_retiro_producto Razon_retiro_producto { get; set; }
    }
}
