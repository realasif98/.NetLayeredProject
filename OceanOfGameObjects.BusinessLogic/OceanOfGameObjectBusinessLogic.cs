using OceanOfGameObjects.DataAccessLayer;
using OceanOfGameObjects.DataAccessLayer.Interfaces;
using OceanOfGameObjects.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OceanOfGameObjects.BusinessLogic
{
    public class OceanOfGameObjectBusinessLogic : IOceanOfGameObjectBusinessLogic
    {
        private readonly IOceanOfGameObjectsDAL _oceanOfGameObjectsDAL;
        private readonly IOceanOfObjectModelInsertDAL _objectModelInsertDAL;

        #region
        // Api's to fetch data
        public OceanOfGameObjectBusinessLogic(IOceanOfGameObjectsDAL oceanOfGameObjectsDAL, IOceanOfObjectModelInsertDAL objectModelInsertDAL)
        {
            _oceanOfGameObjectsDAL = oceanOfGameObjectsDAL;
            _objectModelInsertDAL = objectModelInsertDAL;
        }
        public IEnumerable<GameObjectModel> GetAllItemFromDB()
        {
            return _oceanOfGameObjectsDAL.FetchAllItemFromDB();
        }

        public GameObjectModel GetItemByIDFromDB(int id)
        {
            return _oceanOfGameObjectsDAL.FetchItemByIDFromDB(id);
        }

        public GameObjectModel GetItemByIDAndCategoryFromDB(int id, string category)
        {
            return _oceanOfGameObjectsDAL.FetchItemByIDAndCategoryFromDB(id, category);
        }

        public GameObjectModel GetItemByNameFromDB(string name)
        {
            return _oceanOfGameObjectsDAL.FetchItemByNameFromDB(name);
        }

        public IEnumerable<GameObjectModel> GetItemByCategoryFromDB(string category)
        {
            return _oceanOfGameObjectsDAL.FetchItemByCategoryFromDB(category);
        }

        public IEnumerable<GameObjectModel> GetItemByTypeFromDB(string type)
        {
            return _oceanOfGameObjectsDAL.FetchItemByTypeFromDB(type);
        }

        public IEnumerable<GameObjectModel> GetItemByDateFromDB(DateTime date)
        {
            return _oceanOfGameObjectsDAL.FetchItemByDateFromDB(date);
        }

        #endregion

        public void InsertItem(GameObjectModelInsert objectModel)
        {
            throw new NotImplementedException();
        }
    }
}
