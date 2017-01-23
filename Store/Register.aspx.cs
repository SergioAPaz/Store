using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Store
{
    public partial class Register : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        Store.Clases.Conexion consulta = new Clases.Conexion();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                fillGridView();
        }

        protected void ejecutar()
        {
          
        }


        protected void btnSave(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Eme Aquiddd!');</script>");

        }
        protected void btnLimpiarForm(object sender, EventArgs e)
        {
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtUsuario.Text = "";
            txtFecha.Text = "";
            txtPuesto.Text = "";
            txtCorreo.Text = "";
        }


        public void fillGridView()
        {
            var connectionFromConfiguration = WebConfigurationManager.ConnectionStrings["Store.Properties.Settings.RutaDeConexion"];


            using (SqlConnection dbconnection=new SqlConnection(connectionFromConfiguration.ConnectionString))
            {
                try
                {
                    dbconnection.Open();
                    SqlCommand command = new SqlCommand("SELECT nombre,Apellido,Usuario,DateBorn,Puesto,Puesto,Correo FROM dbo.TMP_Registros", dbconnection);
                    SqlDataAdapter dataAdapter= new SqlDataAdapter (command);
                    DataSet dataset = new DataSet();
                    dataAdapter.Fill(dataset);
                    if (dataset.Tables[0].Rows.Count>0)
                    {
                        GridView1.DataSource = dataset;
                        GridView1.DataBind();
                    }
                }
                catch (SqlException ex)
                {
                    dbconnection.Close();
                    dbconnection.Dispose();
                  
                }
                finally
                {
                    dbconnection.Close();
                    dbconnection.Dispose();
                }
            }
            
        }
    }
}