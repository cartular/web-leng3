using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PortfolioVaras
{
    public partial class Gráficos : System.Web.UI.Page
    {
        protected string datos;
        protected string datosEdades;

        protected void Page_Load(object sender, EventArgs e)
        {
            StringBuilder valores = new StringBuilder();
            StringBuilder valoresEdades = new StringBuilder();

            string connectionString = "Data Source=LAPTOP-J485QUUJ\\SQLEXPRESS;Initial Catalog=portfolio;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionString);

            con.Open();

            // Consultas para obtener los datos de solicitudes
            SqlCommand cmdConsultas = new SqlCommand("SELECT COUNT(*) FROM informacion WHERE asunto = 'Consulta'", con);
            int cantidadConsultas = (int)cmdConsultas.ExecuteScalar();
            valores.Append("['Informacion', 'Cantidad'],['Consulta', " + cantidadConsultas + "],");

            SqlCommand cmdPresupuestos = new SqlCommand("SELECT COUNT(*) FROM informacion WHERE asunto = 'Presupuesto'", con);
            int cantidadPresupuestos = (int)cmdPresupuestos.ExecuteScalar();
            valores.Append("['Presupuesto', " + cantidadPresupuestos + "],");

            SqlCommand cmdSolicitudesBaja = new SqlCommand("SELECT COUNT(*) FROM Informacion WHERE asunto = 'Solicitud de Baja'", con);
            int cantidadSolicitudesBaja = (int)cmdSolicitudesBaja.ExecuteScalar();
            valores.Append("['Solicitud de Baja', " + cantidadSolicitudesBaja + "],");

            SqlCommand cmdSolicitudes = new SqlCommand("SELECT COUNT(*) FROM informacion WHERE asunto = 'Solicitud'", con);
            int cantidadSolicitudes = (int)cmdSolicitudes.ExecuteScalar();
            valores.Append("['Solicitud', " + cantidadSolicitudes + "]");

            // Consulta para obtener los datos de las edades agrupadas en rangos
            SqlCommand cmdEdades = new SqlCommand("SELECT COUNT(*) as Cantidad, CASE " +
                                     "WHEN edad >= 17 AND edad <= 21 THEN '17-21' " +
                                     "WHEN edad >= 22 AND edad <= 31 THEN '22-31' " +
                                     "WHEN edad >= 32 AND edad <= 41 THEN '32-41' " +
                                     "WHEN edad >= 42 AND edad <= 51 THEN '42-51' " +
                                     "ELSE 'Otros' END as RangoEdad " +
                                     "FROM Informacion " +
                                     "GROUP BY CASE " +
                                     "WHEN edad >= 17 AND edad <= 21 THEN '17-21' " +
                                     "WHEN edad >= 22 AND edad <= 31 THEN '22-31' " +
                                     "WHEN edad >= 32 AND edad <= 41 THEN '32-41' " +
                                     "WHEN edad >= 42 AND edad <= 51 THEN '42-51' " +
                                     "ELSE 'Otros' END", con);

            datos = "['Informacion', 'Cantidad'],";
            datos += "['Consulta', " + cantidadConsultas + "],";
            datos += "['Presupuesto', " + cantidadPresupuestos + "],";
            datos += "['Solicitud de Baja', " + cantidadSolicitudesBaja + "],";
            datos += "['Solicitud', " + cantidadSolicitudes + "]";

            using (SqlDataReader reader = cmdEdades.ExecuteReader())
            {
                while (reader.Read())
                {
                    int cantidad = Convert.ToInt32(reader["Cantidad"]);
                    string rangoEdad = reader["RangoEdad"].ToString();

                    // Construir la cadena de datos para el gráfico de columnas
                    valoresEdades.AppendFormat("['{0}', {1}],", rangoEdad, cantidad);
                }
            }

            // Cerrar la conexión a la base de datos
            con.Close();

            // Eliminar la última coma de la cadena valoresEdades
            if (valoresEdades.Length > 0)
            {
                valoresEdades.Length--; // Eliminar el último carácter (que es una coma)
            }

            // Completar la cadena datosEdades con los datos procesados
            datosEdades = "['Edad', 'Cantidad'],";
            datosEdades += valoresEdades.ToString();
        }

        protected void bckBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BDD.aspx");
        }
    }
}