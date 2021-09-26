using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OceanOfGameObjects.DataAccessLayer.DBConfig
{
    public interface IConfig
    {
        public string GetConnection();
    }
}
