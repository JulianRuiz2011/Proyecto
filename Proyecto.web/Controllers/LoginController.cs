using System;

namespace Proyecto.web.Controllers
{
    public class LoginController
    {
        /// <summary>
        /// valida usuario
        /// </summary>
        /// <param name="obclsUsuarios">objeto usuario</param>
        /// <returns>confirmacion</returns>
        public bool getvalidarUsuarioController(Logica.MODELS.clsUsuarios obclsUsuarios)
        {
            try
            {
                Logica.BL.clsUsuarios obclsUsuario = new Logica.BL.clsUsuarios();
                return obclsUsuario.getvalidarUsuario(obclsUsuarios);

            }
            catch(Exception ex) { throw ex; }
        }
    }
}