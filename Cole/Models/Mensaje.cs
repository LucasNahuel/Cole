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
    
    public partial class Mensaje
    {
        public int DniEmisor { get; set; }
        public System.DateTime FechaYHora { get; set; }
        public Nullable<int> DniReceptor { get; set; }
        public string Texto { get; set; }
    
        public virtual Persona Persona { get; set; }
        public virtual Persona Persona1 { get; set; }
    }
}
