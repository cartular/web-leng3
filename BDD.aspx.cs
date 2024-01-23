using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Configuration;

namespace PortfolioVaras
{
    public partial class BDD : System.Web.UI.Page
    {
        //cargar la tabla

        protected void Page_Load(object sender, EventArgs e)
        {


            string connectionString = "Data Source=LAPTOP-J485QUUJ\\SQLEXPRESS;Initial Catalog=portfolio;Integrated Security=True";

            string query = "SELECT * FROM informacion WHERE estado = 'habilitado'";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    // Convertir DataTable a JSON utilizando Newtonsoft.Json
                    string json = JsonConvert.SerializeObject(dt);

                    // Pasar el JSON a la página web
                    ClientScript.RegisterStartupScript(this.GetType(), "loadData", $"LoadData('{json}');", true);
                }

            }
        }


        //boton de grafica

        protected void BtnGrafica_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Grafica_solicitudes.aspx");
            Response.Write("<script>window.open('Gráficos.aspx','_blank');</script>");
        }

        //deshabilitar de la base

        protected void BtnConfirmarBorrar_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=LAPTOP-J485QUUJ\\SQLEXPRESS;Initial Catalog=portfolio;Integrated Security=True";

            // Utilizar int? para el tipo de dato de id_persona
            int? id_persona = null;

            // Intentar convertir el valor de txtIdPersona.Text a int
            if (int.TryParse(txtIdPersona.Text, out int id))
            {
                id_persona = id;
            }

            if (id_persona.HasValue)
            {
                string query = "UPDATE informacion SET estado = 'deshabilitado' WHERE id = @id_persona";

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        // Agregar el parámetro id_persona al comando
                        cmd.Parameters.AddWithValue("@id_persona", id_persona.Value);

                        con.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        con.Close();

                        if (rowsAffected > 0)
                        {
                            // La actualización se realizó correctamente
                            Response.Redirect("BDD.aspx");
                        }
                        else
                        {
                            // No se encontró ningún registro con el ID proporcionado
                            Response.Redirect(Request.RawUrl);
                        }
                    }
                }
            }
            else
            {
                // El valor ingresado no es un entero válido
                // Puedes mostrar un mensaje de error al usuario si lo deseas
            }
        }
    
    protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/index.aspx");
        }

        protected void btnGrafica_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Gráficos.aspx");
        }
    }
}