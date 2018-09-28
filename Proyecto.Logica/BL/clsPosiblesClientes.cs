using System;
using System.Data;
using System.Data.SqlClient;
namespace Proyecto.Logica.BL
{
    public class clsPosiblesClientes
    {

        SqlConnection _sqlConnection = null;//me permite establecer comunicacion con bbdd
        SqlCommand _sqlCommand = null;//me permite ejecutar comandos sql
        SqlDataAdapter _SqlDataAdapter = null;//me permite adaptar conjunto de datos SQL
        string stConexion = string.Empty;//cadena de conexion

        SqlParameter _sqlParameter = null;

        public clsPosiblesClientes()
        {

            clsConexion obclsConexion = new clsConexion();
            stConexion = obclsConexion.getConexion();

        }
        public bool getvalidarUsuario(object obclsUsuarios)
        {
            throw new NotImplementedException();
        }
        /// <summary>
        /// CONSULTA POSIBLES CLIENTES
        /// </summary>
        /// <returns>REGISTROS POSIBLES CLIENTES</returns>
        public DataSet getConsultarPosiblesClientes()
        {

            try
            {
                DataSet dsConsulta = new DataSet();
                _sqlConnection = new SqlConnection(stConexion);
                _sqlConnection.Open();

                _sqlCommand = new SqlCommand("CONSULTARPOSIBLESCLIENTE", _sqlConnection);
                _sqlCommand.CommandType = CommandType.StoredProcedure;



                _sqlCommand.ExecuteNonQuery();

                _SqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                _SqlDataAdapter.Fill(dsConsulta);

                return dsConsulta;

            }

            catch (Exception ex)
            {
                throw ex;
            }
            finally { _sqlConnection.Close(); }


        }
        /// <summary>
        /// ADMINISTRAR POSIBLES CLIENTES
        /// </summary>
        /// <param name="obclsPosiblesClientes">OBJETO</param>
        /// <param name="inOpcion">OPCION DE EJCUCION</param>
        /// <returns>MENSAJE DE OPERACION</returns>
        public string setAdministrarPosiblesClientes(MODELS.clsPosiblesClientes obclsPosiblesClientes,int inOpcion)
        {

            try
            {
                
                _sqlConnection = new SqlConnection(stConexion);
                _sqlConnection.Open();

                _sqlCommand = new SqlCommand("ADMINISTRARPOSIBLESCLIENTES", _sqlConnection);
                _sqlCommand.CommandType = CommandType.StoredProcedure;

                _sqlCommand.Parameters.Add(new SqlParameter("@Identificacion", obclsPosiblesClientes.lnIdentificacion));
                _sqlCommand.Parameters.Add(new SqlParameter("@Empresa", obclsPosiblesClientes.stEmpresa));
                _sqlCommand.Parameters.Add(new SqlParameter("@PrimerNombre", obclsPosiblesClientes.stPrimerNombre));
                _sqlCommand.Parameters.Add(new SqlParameter("@SegundoNombre", obclsPosiblesClientes.stSegundoNombre));
                _sqlCommand.Parameters.Add(new SqlParameter("@PrimerApellido", obclsPosiblesClientes.stPrimerApellido));
                _sqlCommand.Parameters.Add(new SqlParameter("@SegundoApellido", obclsPosiblesClientes.stSegundoApellido));
                _sqlCommand.Parameters.Add(new SqlParameter("@Direccion", obclsPosiblesClientes.stDireccion));
                _sqlCommand.Parameters.Add(new SqlParameter("@Telefono", obclsPosiblesClientes.stTelefono));
                _sqlCommand.Parameters.Add(new SqlParameter("@Correo", obclsPosiblesClientes.stCorreo));
                _sqlCommand.Parameters.Add(new SqlParameter("@Opcion", inOpcion));


                _sqlCommand.ExecuteNonQuery();

                _sqlParameter = new SqlParameter();
                _sqlParameter.ParameterName = "@Mensaje";
                _sqlParameter.Direction = ParameterDirection.Output;
                _sqlParameter.SqlDbType = SqlDbType.VarChar;
                _sqlParameter.Size = 50;

                _sqlCommand.Parameters.Add(_SqlDataAdapter);
                _sqlCommand.ExecuteNonQuery();

                return _sqlParameter.Value.ToString();

            }

            catch (Exception ex)
            {
                throw ex;
            }
            finally { _sqlConnection.Close(); }


        }
    }
}