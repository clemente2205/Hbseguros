using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using System.Data.SqlClient;
using System.Data;
using HBSegurosAPI.Models;

namespace HBSegurosAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsuarioLoginController : Controller
    {
        private readonly string cadenaSQL;
        public UsuarioLoginController(IConfiguration config)
        {
            cadenaSQL = config.GetConnectionString("CadenaSQL");
        }

        [HttpGet]
        [Route("Obtener/{usuario}/{contrasena}")]
        public IActionResult Obtener(string usuario, string contrasena)
        {

            Usuario user = new Usuario();

            try
            {

                using (var conexion = new SqlConnection(cadenaSQL))
                {
                    conexion.Open();
                    var cmd = new SqlCommand("uspObtenerUsuario", conexion);
                    cmd.Parameters.Add("@Usuario", SqlDbType.VarChar);
                    cmd.Parameters["@Usuario"].Value = usuario;
                    cmd.Parameters.Add("@contrasena", SqlDbType.VarChar);
                    cmd.Parameters["@contrasena"].Value = contrasena;
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (var rd = cmd.ExecuteReader())
                    {

                        while (rd.Read())
                        {

                            user.nombre = rd["Nombre"].ToString();

                            user.apellidoPaterno = rd["ApellidoPaterno"].ToString();
                            user.apellidoMaterno = rd["ApellidoMaterno"].ToString();
                            user.TipoUsuario = Convert.ToInt16(rd["TipoUsuario"].ToString());
                        }

                    }
                }


                return StatusCode(StatusCodes.Status200OK, new { mensaje = "ok", response = user });
            }
            catch (Exception error)
            {

                return StatusCode(StatusCodes.Status500InternalServerError, new { mensaje = error.Message, response = user });

            }
        }
    }
}
