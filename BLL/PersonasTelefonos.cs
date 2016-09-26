using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
   public class PersonasTelefonos:ClaseMaestra
    {
        ConexionDb conexion = new ConexionDb();

        public int PersonasTelefonosId { get; set; }
        public string TiposTelefono { get; set; }
        public string Telefono { get; set; }

        public override bool insertar()
        {
            throw new NotImplementedException();
        }

        public override bool modificar()
        {
            throw new NotImplementedException();
        }

        public override bool eliminar()
        {
            throw new NotImplementedException();
        }

        public override bool buscar(int Buscado)
        {
            throw new NotImplementedException();
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            throw new NotImplementedException();
        }
    }
}
