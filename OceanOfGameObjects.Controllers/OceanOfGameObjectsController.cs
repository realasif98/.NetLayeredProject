using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using OceanOfGameObjects.BusinessLogic;
using OceanOfGameObjects.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;  

namespace OceanOfGameObjects.Controllers
{
    [Authorize]
    [ApiController]
    [Route("api/[controller]")]
    public class OceanOfGameObjectsController : ControllerBase, IOceanOfGameObjectsController
    {

        private readonly ILogger<OceanOfGameObjectsController> _logger;
        private readonly IOceanOfGameObjectBusinessLogic _oceanOfGameObjectBusinessLogic;

        public OceanOfGameObjectsController(ILogger<OceanOfGameObjectsController> logger, IOceanOfGameObjectBusinessLogic oceanOfGameObjectBusinessLogic)
        {
            _logger = logger;
            _oceanOfGameObjectBusinessLogic = oceanOfGameObjectBusinessLogic;
        }

        //simple get request
        [HttpGet]
        [Route("GetAllItem")]
        public IEnumerable<GameObjectModel> GetAllItem()
        {
            _logger.LogInformation("Fetching all items from method : GetAllItem");
             var res =  _oceanOfGameObjectBusinessLogic.GetAllItemFromDB();
            _logger.LogInformation("All Items Fetched Successfully from method : GetAllItem");
            _logger.LogInformation("Total items fetched: {0}", res.Count());
            return res;
        }

        //get request using id in url route
        [HttpGet]
        [Route("GetItemById/{id}")]
        public GameObjectModel GetItemById([FromRoute] int id)
        {
            _logger.LogInformation("Fetching item from method : GetItemById");
            var res = _oceanOfGameObjectBusinessLogic.GetItemByIDFromDB(id);
            _logger.LogInformation("Item Fetched Successfully from method : GetItemById");
            return res;
        }

        [HttpGet]
        [Route("GetItemByName/{name}")]
        public GameObjectModel GetItemByName([FromRoute] string name)
        {
            _logger.LogInformation("Fetching item from method : GetItemByName");
            var res = _oceanOfGameObjectBusinessLogic.GetItemByNameFromDB(name);
            _logger.LogInformation("Item Fetched Successfully from method : GetItemByName");
            return res;
        }

        [HttpGet]
        [Route("GetItemByCategory/{category}")]
        public IEnumerable<GameObjectModel> GetItemByIdAndCategory([FromRoute] string category)
        {
            _logger.LogInformation("Fetching item from method : GetItemByCategory");
            var res = _oceanOfGameObjectBusinessLogic.GetItemByCategoryFromDB(category);
            _logger.LogInformation("All Items Fetched Successfully from method : GetItemByCategory");
            _logger.LogInformation("Total items fetched: {0}", res.Count());
            return res;
        }

        [HttpGet]
        [Route("GetItemByType/{type}")]
        public IEnumerable<GameObjectModel> GetItemByType([FromRoute] string type)
        {
            _logger.LogInformation("Fetching item from method : GetItemByType");
            var res = _oceanOfGameObjectBusinessLogic.GetItemByTypeFromDB(type);
            _logger.LogInformation("All Items Fetched Successfully from method : GetItemByType");
            _logger.LogInformation("Total items fetched: {0}", res.Count());
            return res;
        }

        [HttpGet]
        [Route("GetItemByDate/{date}")]
        public IEnumerable<GameObjectModel> GetItemByDate([FromRoute] DateTime date)
        {
            _logger.LogInformation("Fetching item from method : GetItemByDate");
            var res = _oceanOfGameObjectBusinessLogic.GetItemByDateFromDB(date);
            _logger.LogInformation("All Items Fetched Successfully from method : GetItemByDate");
            _logger.LogInformation("Total items fetched: {0}", res.Count());
            return res;
        }

        [HttpGet]
        [Route("GetLatestItems")]
        public IEnumerable<GameObjectModel> GetLatestItem()
        {
            _logger.LogInformation("Fetching item from method : GetLatestItems");
            var res = _oceanOfGameObjectBusinessLogic.GetItemByDateFromDB(new DateTime());
            _logger.LogInformation("All Items Fetched Successfully from method : GetLatestItems");
            _logger.LogInformation("Total items fetched: {0}", res.Count());
            return res;
        }

    }
}
