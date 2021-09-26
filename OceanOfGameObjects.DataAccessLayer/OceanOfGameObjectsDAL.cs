using Microsoft.Extensions.Configuration;
using OceanOfGameObjects.DataAccessLayer.DBConfig;
using OceanOfGameObjects.DataAccessLayer.Interfaces;
using OceanOfGameObjects.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OceanOfGameObjects.DataAccessLayer
{
    public class OceanOfGameObjectsDAL : IOceanOfGameObjectsDAL
    {
        private readonly IConfig _config;

        public OceanOfGameObjectsDAL(IConfig config)
        {
            _config = config;
        }

        public IEnumerable<GameObjectModel> FetchAllItemFromDB()
        {
            List<GameObjectModel> gameObjectModels = null;
            using (SqlConnection connection = new(this._config.GetConnection()))
            {
                SqlCommand cmd = new()
                {
                    Connection = connection,
                    CommandType = CommandType.Text,
                    CommandText = "SELECT Gameid, ObjectName, Category, Type, Size, Url, Uploaded_Date FROM GameObjectsTable"
                };
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                gameObjectModels = new List<GameObjectModel>();

                while (reader.Read())
                {
                    gameObjectModels.Add(new GameObjectModel
                    {
                        Gameid = reader.GetInt32(0),
                        Name = reader.GetString(1),
                        Category = reader.GetString(2),
                        Type = reader.GetString(3),
                        Size = reader.GetDouble(4),
                        URL = reader.GetString(5),
                        UploadedDate = reader.GetDateTime(6)
                    });
                }

                reader.Close();
                connection.Close();
            }
           

            return gameObjectModels;
        }

        public GameObjectModel FetchItemByIDFromDB(int id)
        {
            GameObjectModel gameObjectModel = null;

            using (SqlConnection connection = new(this._config.GetConnection()))
            {
                SqlCommand cmd = new()
                {
                    Connection = connection,
                    CommandType = CommandType.Text,
                    CommandText = "SELECT Gameid, ObjectName, Category, Type, Size, Url, Uploaded_Date FROM GameObjectsTable WHERE Gameid = " + id
                };
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader(); 

                while (reader.Read())
                {
                    gameObjectModel = new GameObjectModel
                    {
                        Gameid = reader.GetInt32(0),
                        Name = reader.GetString(1),
                        Category = reader.GetString(2),
                        Type = reader.GetString(3),
                        Size = reader.GetDouble(4),
                        URL = reader.GetString(5),
                        UploadedDate = reader.GetDateTime(6)
                    };
                }

                reader.Close();
                connection.Close();
            }

            return gameObjectModel;
        }

        public GameObjectModel FetchItemByIDAndCategoryFromDB(int id, string category)
        {
            GameObjectModel gameObjectModel = null;

            using (SqlConnection connection = new(this._config.GetConnection()))
            {
                SqlCommand cmd = new()
                {
                    Connection = connection,
                    CommandType = CommandType.Text,
                    CommandText = "SELECT Gameid, ObjectName, Category, Type, Size, Url, Uploaded_Date FROM GameObjectsTable " +
                                  " WHERE Gameid = " + id + " AND Category = " + "@category",

                };

                cmd.Parameters.Add(new SqlParameter("@category", SqlDbType.VarChar)).Value = category;
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader(); 

                while (reader.Read())
                {
                    gameObjectModel = new GameObjectModel
                    {
                        Gameid = reader.GetInt32(0),
                        Name = reader.GetString(1),
                        Category = reader.GetString(2),
                        Type = reader.GetString(3),
                        Size = reader.GetDouble(4),
                        URL = reader.GetString(5),
                        UploadedDate = reader.GetDateTime(6)
                    };
                }

                reader.Close();
                connection.Close();
            }

            return gameObjectModel;
        }

        public GameObjectModel FetchItemByNameFromDB(string name)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<GameObjectModel> FetchItemByCategoryFromDB(string category)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<GameObjectModel> FetchItemByTypeFromDB(string type)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<GameObjectModel> FetchItemByDateFromDB(DateTime date)
        {
            throw new NotImplementedException();
        }
    }
}
