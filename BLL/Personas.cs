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
      

        public Personas()
        {
            this.PersonaId = 0;
            this.Nombres = "";
            this.Sexo = 0;
        }

        public Personas(int PersonaId,string Nombres,int Sexo)
        {
            this.PersonaId = PersonaId;
            this.Nombres = Nombres;
            this.Sexo = Sexo;
        }

        public override bool insertar()
        {
            try
            {
                bool retorno = false;
                retorno = conexion.Ejecutar(String.Format("insert into Personas(Nombres,Sexo)values('{0}',{1})", this.Nombres, this.Sexo));
                return retorno;
            }catch(Exception ex)
            {
                throw ex;
            }
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
