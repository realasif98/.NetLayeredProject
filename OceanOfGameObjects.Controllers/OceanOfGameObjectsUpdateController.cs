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
    public class OceanOfGameObjectsUpdateController: ControllerBase
    {
        private readonly IOceanOfGameObjectBusinessLogic _oceanOfGameObjectBusinessLogic;
        public OceanOfGameObjectsUpdateController(IOceanOfGameObjectBusinessLogic oceanOfGameObjectBusinessLogic)
        {
            _oceanOfGameObjectBusinessLogic = oceanOfGameObjectBusinessLogic;
        }

        [HttpPatch]
        [Route("UpdateOne")]
        public IActionResult UpdateOneItem([FromBody] GameObjectModelInsert objectModel)
        {

            _oceanOfGameObjectBusinessLogic.InsertItem(objectModel);

            return Ok();
        }

        [HttpPatch]
        [Route("UpdateMultiple")]
        public void UpdateMultipleItem([FromBody] List<GameObjectModel> objectModelList)
        {

        }
    }
}
