using OceanOfGameObjects.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OceanOfGameObjects.DataAccessLayer.Interfaces
{
    public interface IOceanOfGameObjectsDAL
    {
        public IEnumerable<GameObjectModel> FetchAllItemFromDB();

        public GameObjectModel FetchItemByIDFromDB(int id);

        GameObjectModel FetchItemByIDAndCategoryFromDB(int id, string category);

        GameObjectModel FetchItemByNameFromDB(string name);

        IEnumerable<GameObjectModel> FetchItemByCategoryFromDB(string category);

        IEnumerable<GameObjectModel> FetchItemByTypeFromDB(string type);

        IEnumerable<GameObjectModel> FetchItemByDateFromDB(DateTime date);
    }
}
