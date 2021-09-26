using OceanOfGameObjects.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OceanOfGameObjects.Tests
{
    public class TestDataItem
    {
        private List<GameObjectModel> gameObjects;

        public TestDataItem()
        {
            gameObjects = new List<GameObjectModel>()
            {
                new GameObjectModel
                {
                    Gameid = 1,
                    Name="Tarjan",
                    Category = "Car",
                    Type = "Vehicle",
                    Size = 2.45,
                    URL  = "tarjan.png"
                },
                new GameObjectModel
                {
                    Gameid = 2,
                    Name="Bullet",
                    Category = "Bike",
                    Type = "Vehicle",
                    Size = 4.45,
                    URL  = "bike.png"
                }
            };
        }

        public IEnumerable<GameObjectModel> FakeListOfData()
        {
            return gameObjects;
        }

        public GameObjectModel FakeSIngleListOfData()
        {
            return gameObjects.FirstOrDefault();
        }
    }
}
