using OceanOfGameObjects.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OceanOfGameObjects.BusinessLogic
{
    public interface IOceanOfGameObjectBusinessLogic
    {
        public IEnumerable<GameObjectModel> GetAllItemFromDB();

        public GameObjectModel GetItemByIDFromDB(int id);
        GameObjectModel GetItemByIDAndCategoryFromDB(int id, string category);
        void InsertItem(GameObjectModelInsert objectModel);
        GameObjectModel GetItemByNameFromDB(string name);
        IEnumerable<GameObjectModel> GetItemByCategoryFromDB(string category);
        IEnumerable<GameObjectModel> GetItemByTypeFromDB(string type);
        IEnumerable<GameObjectModel> GetItemByDateFromDB(DateTime date);
    }
}
