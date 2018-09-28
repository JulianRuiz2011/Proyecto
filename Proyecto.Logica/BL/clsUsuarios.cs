using System;
using System.Data;
using System.Data.SqlClient;
namespace Proyecto.Logica.BL
{
    public class clsUsuarios
    {
        SqlConnection _sqlConnection=null;//me permite establecer comunicacion con bbdd
        SqlCommand _sqlCommand = null;//me permite ejecutar comandos sql
        SqlDataAdapter _SqlDataAdapter = null;//me permite adaptar conjunto de datos SQL

        public bool getvalidarUsuario(object obclsUsuarios)
        {
            throw new NotImplementedException();
        }

        string stConexion = string.Empty;//cadena de conexion

        public clsUsuarios()
        {

            clsConexion obclsConexion = new clsConexion();
            stConexion = obclsConexion.getConexion();

        }
        /// <summary>
        /// validar usuarios
        /// </summary>
        /// <param name="obclsUsuarios">objeto usuario</param>
        /// <returns>confirmacion</returns>
        public bool getvalidarUsuario(Logica.MODELS.clsUsuarios obclsUsuarios)
        {

            try
            {
                DataSet dsConsulta = new DataSet(); 
                _sqlConnection = new SqlConnection(stConexion);
                _sqlConnection.Open();

                _sqlCommand = new SqlCommand("CONSULTARUSUARIO", _sqlConnection);
                _sqlCommand.CommandType = CommandType.StoredProcedure;

                _sqlCommand.Parameters.Add(new SqlParameter("@LOGIN", obclsUsuarios.stLogin));
                _sqlCommand.Parameters.Add(new SqlParameter("@PASSWORD", obclsUsuarios.stPassword));

                _sqlCommand.ExecuteNonQuery();

                _SqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                _SqlDataAdapter.Fill(dsConsulta);

                if (dsConsulta.Tables[0].Rows.Count > 0) return true;
                else return false;

            }

            catch(Exception ex)
            {
                throw ex;
            }
            finally { _sqlConnection.Close(); }
        }
    }
}
