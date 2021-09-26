using OceanOfGameObjects.Model;

namespace OceanOfGameObjects.DataAccessLayer
{
    public interface IOceanOfObjectModelInsertDAL
    {
        public void InsertSingleItemInDB(GameObjectModelInsert objectModel);
    }
}