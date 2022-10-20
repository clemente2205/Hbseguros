using Microsoft.AspNetCore.Mvc;
using Application.Activities;
using Microsoft.AspNetCore.Authorization;

namespace API.Controllers
{
    public class ActivitiesController : BaseApiController
    {
        [Authorize]
        [HttpGet]
        public async Task<ActionResult<List<Domain.Activity>>> GetActivities()
        {
            return await Mediator.Send(new List.Query());
        }
    }
}
