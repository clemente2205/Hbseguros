using HBSegurosAPI.Models;
using Microsoft.AspNetCore.Mvc;
using System.Data.SqlClient;
using System.Data;

namespace HBSegurosAPI.Controllers
{
    public class TransmisionController : Controller
    {
        private readonly string cadenaSQL;
        public TransmisionController(IConfiguration config)
        {
            cadenaSQL = config.GetConnectionString("CadenaSQL");
        }

        //REFERENCIAS
        //MODELO
        //SQL

        [HttpGet]
        [Route("TipoTransmision")]
        public IActionResult Lista()
        {

            List<TipoTransmision> lista = new List<TipoTransmision>();

            try
            {

                using (var conexion = new SqlConnection(cadenaSQL))
                {
                    conexion.Open();
                    var cmd = new SqlCommand("uspObtenerTipoTransmision", conexion);
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (var rd = cmd.ExecuteReader())
                    {

                        while (rd.Read())
                        {

                            lista.Add(new TipoTransmision
                            {
                                IdTipoTransmision = Convert.ToInt32(rd["IdTransmision"]),
                                Transmision = rd["Transmision"].ToString(),
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
