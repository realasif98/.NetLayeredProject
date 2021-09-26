using OceanOfGameObjects.DataAccessLayer.DBConfig;
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
    public class OceanOfObjectModelInsertDAL : IOceanOfObjectModelInsertDAL
    {

        private readonly IConfig _config;

        public OceanOfObjectModelInsertDAL(IConfig config)
        {
            _config = config;
        }

        public void InsertSingleItemInDB(GameObjectModelInsert objectModel)
        {
            using (SqlConnection connection = new(_config.GetConnection()))
            {
                SqlCommand cmd = new()
                {
                    Connection = connection,
                    CommandType = CommandType.Text,
                    CommandText = "INSERT INTO GameObjectsTable VALUES (@name, @category, @type, @size, @url, @uploadeddate)"
                };
                connection.Open();
                cmd.Parameters.AddWithValue("@name", objectModel.Name);
                cmd.Parameters.AddWithValue("@category", objectModel.Category);
                cmd.Parameters.AddWithValue("@type", objectModel.Type);
                cmd.Parameters.AddWithValue("@size", objectModel.Size);
                cmd.Parameters.AddWithValue("@url", objectModel.URL);
                cmd.Parameters.AddWithValue("@uploadeddate", objectModel.UploadedDate);
                cmd.ExecuteNonQuery();
                connection.Close();
            }
        }
    }
}
