
using Microsoft.AspNetCore.Mvc;
using OceanOfGameObjects.BusinessLogic;
using OceanOfGameObjects.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OceanOfGameObjects.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class OceanOfGameObjectsDeleteController: ControllerBase
    {
        private readonly IOceanOfGameObjectBusinessLogic _oceanOfGameObjectBusinessLogic;
        public OceanOfGameObjectsDeleteController(IOceanOfGameObjectBusinessLogic oceanOfGameObjectBusinessLogic)
        {
            _oceanOfGameObjectBusinessLogic = oceanOfGameObjectBusinessLogic;
        }

        [HttpDelete]
        [Route("DeleteByName/{name}")]
        public IActionResult DeleteByName([FromRoute] string name)
        {

            _oceanOfGameObjectBusinessLogic.InsertItem(null);

            return Ok();
        }

        [HttpDelete]
        [Route("DeleteByCategory/{category}")]
        public IActionResult DeleteByCategory([FromRoute] string category)
        {

            _oceanOfGameObjectBusinessLogic.InsertItem(null);

            return Ok();
        }


        [HttpDelete]
        [Route("DeleteAll")]
        public void DeleteAllItems()
        {

        }
    }
}
