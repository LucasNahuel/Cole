//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Cole.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Institucion
    {
        public string Id { get; set; }
        public string Nombre { get; set; }
        public Nullable<int> Numero { get; set; }
        public string Categoria { get; set; }
        public Nullable<int> NumeroTelefono { get; set; }
        public string Direccion { get; set; }
        public Nullable<int> DniAdministrador { get; set; }
    
        public virtual Persona Persona { get; set; }
    }
}