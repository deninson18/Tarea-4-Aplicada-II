using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class Personas:ClaseMaestra
    {
        ConexionDb conexion = new ConexionDb();

        public int PersonaId { get; set; }
        public string Nombres { get; set; }
        public int Sexo { get; set; }
        public List<PersonaTelefonos>ListaTelefono { get; set; }
      

        public Personas()
        {
            this.PersonaId = 0;
            this.Nombres = "";
            this.Sexo = 0;
            ListaTelefono = new List<PersonaTelefonos>();
        }


        public void AgregarTelefonos(string TiposTelefono,string Telefono)
        {
            ListaTelefono.Add(new PersonaTelefonos(TiposTelefono,Telefono));
        }

        public override bool insertar()
          {
             int retorno = 0;

             try
             {
                 //obtengo el identity insertado en la tabla personas
                 retorno = Convert.ToInt32(conexion.ObtenerValor(string.Format("Insert Into Personas(Nombres,Sexo) values('{0}','{1}'); SELECT SCOPE_IDENTITY()", this.Nombres, this.Sexo)));

                   this.PersonaId = retorno;
                 if (retorno > 0)
                 {
                     foreach (PersonaTelefonos item in this.ListaTelefono)
                     {
                         conexion.Ejecutar(string.Format("Insert into PersonasTelefonos(PersonaId,TipoTelefono,Telefono) Values ({0},'{1}','{2}')",
                             retorno, item.TiposTelefono, item.Telefono));
                     }
                 }


             }
             catch (Exception ex)
             {

                 throw ex;
             }
             return retorno > 0;
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

        public override bool modificar()
        {
            throw new NotImplementedException();
        }
    }
}
