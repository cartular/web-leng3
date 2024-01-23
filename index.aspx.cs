using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PortfolioVaras
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlAsunto.DataSource = GetDropDownListOptions(); // Método que obtiene las opciones del DropDownList
                ddlAsunto.DataTextField = "Text";
                ddlAsunto.DataValueField = "Value";
                ddlAsunto.DataBind();
            }
        }

        protected List<ListItem> GetDropDownListOptions()
        {
            List<ListItem> options = new List<ListItem>
    {
        new ListItem("Consulta", "Consulta"),
        new ListItem("Solicitud de Baja", "Solicitud de Baja"),
        new ListItem("Presupuesto", "Presupuesto"),
        new ListItem("Solicitud", "Solicitud")
    };

            return options;
        }
        private (string Nombre, string Asunto, string Email, string Descripcion, DateTime Fecha, string Edad) datos()
        {
            string nombre = ombre.Value;
            string asunto = ddlAsunto.SelectedValue;
            string email = mail.Value;
            string descripcion = consulta.Value;
            DateTime fecha = DateTime.Now;
            string edad = dad.Value;

            return (nombre, asunto, email, descripcion, fecha, edad);
        }

        protected void sendButton_Click(object sender, EventArgs e)
        {
            // Obtener los datos
            var (nombre, asunto, email, descripcion, fecha, edad) = datos();

            // Guardar los datos en la base de datos
            string connectionString = "Data Source=LAPTOP-J485QUUJ\\SQLEXPRESS;Initial Catalog=portfolio;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO informacion (Nombre, Asunto, Email, Descripcion, Fecha, Edad) " +
                               "VALUES (@Nombre, @Asunto, @Email, @Descripcion, @Fecha, @Edad)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Nombre", nombre);
                    command.Parameters.AddWithValue("@Asunto", asunto);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Descripcion", descripcion);
                    command.Parameters.AddWithValue("@Fecha", fecha);
                    command.Parameters.AddWithValue("@Edad", edad);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            // Mostrar el botón "Base Datos"
            btn_bdd.Visible = true;
            confirmationMessage.Visible = true;


            // Limpiar los inputs
            ombre.Value = string.Empty;
            ddlAsunto.SelectedValue = string.Empty;
            mail.Value = string.Empty;
            consulta.Value = string.Empty;
            dad.Value = string.Empty;

            // Después de procesar el envío, redirigir a la sección "Contact me" 
            string script = "<script type='text/javascript'>window.location = '#chat-section'; window.scrollBy(0, -50);</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "ScrollToContact", script);


            // Configuración del cliente SMTP y enviar el correo
            try
            {
                // Configuración del cliente SMTP
                SmtpClient cliente = new SmtpClient();
                cliente.Host = "smtp.gmail.com";
                cliente.Port = 587;
                cliente.EnableSsl = true;
                cliente.DeliveryMethod = SmtpDeliveryMethod.Network;
                cliente.UseDefaultCredentials = false;

                // Credenciales de autenticación
                NetworkCredential credenciales = new NetworkCredential("varasccatalina@gmail.com", "bjswetduvdwctbml");
                cliente.Credentials = credenciales;

                // Crear el mensaje
                MailMessage mensaje = new MailMessage();
                mensaje.From = new MailAddress("varasccatalina@gmail.com");
                mensaje.To.Add("varasccatalina@gmail.com");
                mensaje.Subject = ddlAsunto.Text;
                mensaje.Body = "De: " + ombre.Value + "\r\n" + consulta.Value;

                // Enviar el mensaje
                cliente.Send(mensaje);

                // Mostrar la confirmación en la página
                string confirmacionHtml = "<div class='confirmacion-message'><i class='fas fa-check-circle' style='color: green'></i> Solicitud enviada con éxito</div>";
                ClientScript.RegisterStartupScript(GetType(), "ShowConfirmationMessage", "$('#confirmationMessage').html('" + confirmacionHtml + "');", true);

                // Mostrar la superposición de fondo y el mensaje de confirmación
                string showOverlayScript = @"
    <script>
        $(document).ready(function () {
            // Mostrar la superposición y el mensaje de confirmación
            $('.overlay').fadeIn(400, function () {
                $('.confirmacion-message').fadeIn(400);
            });
        });
    </script>";

                // Agregar el script al final del cuerpo de la página
                Page.ClientScript.RegisterStartupScript(GetType(), "ShowOverlayScript", showOverlayScript);

                // Redirigir la página a sí misma después de 5 segundos
                Response.AddHeader("REFRESH", "25;URL=index.aspx");

                Console.WriteLine("Correo enviado correctamente");
            }
            catch (Exception ex)
            {
                // Mostrar confirmación de error con icono de X rojo
                string errorMessage = "Error al enviar la solicitud";
                // Mostrar el cuadro emergente con el mensaje de error
                ClientScript.RegisterStartupScript(this.GetType(), "ShowErrorMessage", "alert('" + errorMessage + "');", true);
                Console.WriteLine("Error al enviar el correo: " + ex.Message);
        
            }
            

        }



        protected void btn_bdd_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/BDD.aspx");
        }
    }
}