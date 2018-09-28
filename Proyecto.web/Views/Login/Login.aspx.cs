using System;
namespace Proyecto.web.Views.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           //if (!IsPostBack)
            //ClientScript.RegisterStartupScript(this.GetType(), "MENSAJE", "<Script> swal('Buen Trabajo!', 'se realizo el proceso con excito!', 'success') </script>");
        }
        protected void BtnAceptar_Click1(object sender, EventArgs e)
        {
            try
            {
                string stMensaje = string.Empty;
                if (string.IsNullOrWhiteSpace(TxtEmail.Text)) stMensaje += "ingrese email,";
                if (string.IsNullOrWhiteSpace(TxtPassword.Text)) stMensaje += "ingrese password,";

                if (!string.IsNullOrEmpty(stMensaje)) throw new Exception(stMensaje.TrimEnd(','));
                //defino objeto con propiedades
                Logica.MODELS.clsUsuarios obclsUsuarios = new Logica.MODELS.clsUsuarios
                {
                    stLogin = TxtEmail.Text,
                    stPassword = TxtPassword.Text
                };
                //instancio controlador 
                Controllers.LoginController obLoginController = new Controllers.LoginController();
                bool blBandera = obLoginController.getvalidarUsuarioController(obclsUsuarios);

                if (blBandera)
                    Response.Redirect("../Index/Index.aspx");//redirecciono
                else
                    throw new Exception("Usuario o Password incorrectos");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Error!','" + ex.Message + "!','error')</script>");
            }
        }
    }
}