
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
    public class OceanOfGameObjectsInsertController : ControllerBase
    {
        private readonly IOceanOfGameObjectBusinessLogic _oceanOfGameObjectBusinessLogic;
        public OceanOfGameObjectsInsertController(IOceanOfGameObjectBusinessLogic oceanOfGameObjectBusinessLogic)
        {
            _oceanOfGameObjectBusinessLogic = oceanOfGameObjectBusinessLogic;
        }

        [HttpPost]
        [Route("InsertOne")]
        public IActionResult InsertOneItem([FromBody] GameObjectModelInsert objectModel)
        {

            _oceanOfGameObjectBusinessLogic.InsertItem(objectModel);

            return Ok();
        }

        [HttpPost]
        [Route("InsertMultiple")]
        public void InsertMultipleItem([FromBody] List<GameObjectModel> objectModelList)
        {
            throw new NotImplementedException();
        }
    }
}
