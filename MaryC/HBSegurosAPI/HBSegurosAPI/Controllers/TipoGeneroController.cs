using HBSegurosAPI.Models;
using Microsoft.AspNetCore.Mvc;
using System.Data.SqlClient;
using System.Data;

namespace HBSegurosAPI.Controllers
{
    public class TipoGeneroController : Controller
    {
        private readonly string cadenaSQL;
        public TipoGeneroController(IConfiguration config)
        {
            cadenaSQL = config.GetConnectionString("CadenaSQL");
        }

        //REFERENCIAS
        //MODELO
        //SQL

        [HttpGet]
        [Route("TipoGenero")]
        public IActionResult Lista()
        {

            List<TipoGenero> lista = new List<TipoGenero>();

            try
            {

                using (var conexion = new SqlConnection(cadenaSQL))
                {
                    conexion.Open();
                    var cmd = new SqlCommand("uspObtenerTipoGenero", conexion);
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (var rd = cmd.ExecuteReader())
                    {

                        while (rd.Read())
                        {

                            lista.Add(new TipoGenero
                            {
                                IdTipoGenero = Convert.ToInt32(rd["IdTipoGenero"]),
                                tipoGenero = rd["TipoGenero"].ToString(),
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
