using OceanOfGameObjects.Model;
using System;
using System.Collections.Generic;

namespace OceanOfGameObjects.Controllers
{
    public interface IOceanOfGameObjectsController
    {
        public IEnumerable<GameObjectModel> GetAllItem();

        public GameObjectModel GetItemById(int id);

        public GameObjectModel GetItemByName(string name);

        IEnumerable<GameObjectModel> GetItemByIdAndCategory(string category);

        public IEnumerable<GameObjectModel> GetItemByType(string type);

        public IEnumerable<GameObjectModel> GetItemByDate(DateTime date);

        public IEnumerable<GameObjectModel> GetLatestItem();
    }
}