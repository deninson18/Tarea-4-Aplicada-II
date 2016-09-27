using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.ComponentModel;


namespace BLL
{
   public class PersonasTelefonos
    {
        ConexionDb conexion = new ConexionDb();

   
        public string TiposTelefono { get; set; }
        public string Telefono { get; set; }


        public string Tipo
        {
            get{ return this.TiposTelefono.ToString(); }
        }


        public PersonasTelefonos()
        {
           
            this.TiposTelefono = "Casa";
            this.Telefono = "";
        }

        public PersonasTelefonos(string TiposTelefono,string Telefono)
        {
            
            this.TiposTelefono = TiposTelefono;
            this.Telefono=Telefono;

        }

       
    }
}
