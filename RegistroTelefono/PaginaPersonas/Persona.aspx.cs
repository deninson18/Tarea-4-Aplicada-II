using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace RegistroTelefono.PaginaPersonas
{
    public partial class Persona : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            telefonoTextBox.MaxLength = 15;
            DataTable dt = new DataTable();
            if (!IsPostBack)
            {

                dt.Columns.AddRange(new DataColumn[2] { new DataColumn("TIPO"), new DataColumn("TELEFONO") });
                ViewState["Personas"] = dt;
            }
        }


        protected void guardar_Click(object sender, EventArgs e)
        {
            Personas persona = new Personas();
            int id = 0;
            int.TryParse(IdTextBox.Text, out id);
            persona.PersonaId= id;

            persona.Nombres = nombreTextBox.Text;


            if (mRadioButton.Checked)
            {
                persona.Sexo = 1;
            }
            else
            {
                persona.Sexo = 0;
            }
            foreach (GridViewRow row in GridView1.Rows)
            {
                persona.AgregarTelefonos(row.Cells[0].Text, row.Cells[1].Text);
            }

            if (persona.insertar())
            {
                Response.Write("<cript>alert('Guardo Exitosamente')</script>");
            }
            else
            {
                Response.Write("<cript>alert('No pudo Guardar Exitosamente')</script>");
            }
        }


        protected void nuevo_Click1(object sender, EventArgs e)
        {
            IdTextBox.Text = string.Empty;
            nombreTextBox.Text = string.Empty;
            mRadioButton.Checked = false;
            fRadioButton.Checked = false;
            TipoDropDownList.SelectedIndex = 0;
            telefonoTextBox.Text = string.Empty;
        }

        protected void agregarButton_Click(object sender, EventArgs e)
        {

            try
            {
                DataTable dt = (DataTable)ViewState["Personas"];
                DataRow fila;
                fila = dt.NewRow();
                fila["TIPO"] = TipoDropDownList.SelectedValue;
                fila["TELEFONO"] = telefonoTextBox.Text;

                dt.Rows.Add(fila);
                ViewState["Personas"] = dt;
                GridView1.DataSource = (DataTable)ViewState["Personas"];
                GridView1.DataBind();

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
    
}