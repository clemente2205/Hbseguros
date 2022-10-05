using HBSegurosAPI.Models;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using System.Data.SqlClient;

namespace HBSegurosAPI.Controllers
{
    public class TipoPersonasController : Controller
    {
        private readonly string cadenaSQL;
        public TipoPersonasController(IConfiguration config)
        {
            cadenaSQL = config.GetConnectionString("CadenaSQL");
        }

        //REFERENCIAS
        //MODELO
        //SQL

        [HttpGet]
        [Route("TipoPersonas")]
        public IActionResult Lista()
        {

            List<TipoPersonas> lista = new List<TipoPersonas>();

            try
            {

                using (var conexion = new SqlConnection(cadenaSQL))
                {
                    conexion.Open();
                    var cmd = new SqlCommand("uspObtenerTipoPersona", conexion);
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (var rd = cmd.ExecuteReader())
                    {

                        while (rd.Read())
                        {

                            lista.Add(new TipoPersonas
                            {
                                IdTipoPersona = Convert.ToInt32(rd["IdTipoPersona"]),
                                TipoPersona = rd["TipoPersona"].ToString(),
                            });
                        }

                    }
                }
                return StatusCode(StatusCodes.Status200OK, new { mensaje = "ok", response = lista });
            }
            catch (Exception error)
            {

                return StatusCode(StatusCodes.Status500InternalServerError, new { mensaje = error.Message, response = lista });

            }
        }
    }

}
