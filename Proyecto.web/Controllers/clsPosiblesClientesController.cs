using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Proyecto.web.Controllers
{
    public class clsPosiblesClientesController
    {
        /// <summary>
        /// obtine registros posibles clientes
        /// </summary>
        /// <returns>data posibles clientes</returns>
        public DataSet getConsultarPosiblesClientesController()
        {
            try
            {
                Logica.BL.clsPosiblesClientes obclsPosiblesClientes = new Logica.BL.clsPosiblesClientes();
                return obclsPosiblesClientes.getConsultarPosiblesClientes();
            }
            catch (Exception ex) { throw ex; }
        }
        /// <summary>
        /// administrar posibles clinetes
        /// </summary>
        /// <param name="obclsPosiblesClientesModels">objet</param>
        /// <param name="inOpcion">opcion de ejecucion</param>
        /// <returns>mensaje de proceso</returns>
        public string setAdministrarPosiblesClientesController(Logica.MODELS.clsPosiblesClientes obclsPosiblesClientesModels, int inOpcion)
        {
            try
            {
                Logica.BL.clsPosiblesClientes obclsPosiblesClientes = new Logica.BL.clsPosiblesClientes();
                return obclsPosiblesClientes.setAdministrarPosiblesClientes(obclsPosiblesClientesModels, inOpcion);



            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

    }
}