using System;
namespace Proyecto.web.Views.Registro
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAceptarReg_Click(object sender, EventArgs e)
        {
            try
            {
                string stMensaje = string.Empty;
                if (string.IsNullOrWhiteSpace(TxtPrimernombre.Text)) stMensaje += "ingrese Primer Nombre,";
                if (string.IsNullOrWhiteSpace(TxtApellido.Text)) stMensaje += " ingrese Apellido,";
                if (string.IsNullOrWhiteSpace(TxtEmailReg.Text)) stMensaje += " ingrese email,";
                if (string.IsNullOrWhiteSpace(TxtPasswordReg.Text)) stMensaje += " ingrese Contraseña.";
                               
                if (!string.IsNullOrEmpty(stMensaje)) throw new Exception(stMensaje.TrimEnd(','));
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Error!','" + ex.Message + "!','error')</script>");
            }
        }
    }
}