using HBSeguros.DB;
using Microsoft.AspNetCore.Mvc;

namespace HBSeguros.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class LogginController : Controller
    {
        [HttpGet(Name = "test")]
        public string Get()
        {
            DBMaster.Instance.connection();
            return "hi";
        }
    }
}
