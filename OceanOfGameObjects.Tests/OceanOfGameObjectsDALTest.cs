using Moq;
using OceanOfGameObjects.DataAccessLayer;
using OceanOfGameObjects.DataAccessLayer.DBConfig;
using OceanOfGameObjects.DataAccessLayer.Interfaces;
using OceanOfGameObjects.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace OceanOfGameObjects.Tests
{
    public class OceanOfGameObjectsDALTest
    {
        [Fact]
        public void FetchAllItem()
        {
            //Arrange

            var moqClass = new Mock<IOceanOfGameObjectsDAL>();
            var moqConfig = new Mock<IConfig>();
            moqClass.Setup(x => x.FetchAllItemFromDB()).Returns(new TestDataItem().FakeListOfData());
            var reqObject = new OceanOfGameObjectsDAL(moqConfig.Object);
            //Act
            var res = reqObject.FetchAllItemFromDB();
            //Assert
            Assert.NotNull(res);
            Assert.Equal(2, res.Count());
            moqClass.Verify(x => x.FetchAllItemFromDB(), Times.Once);

        }


        [Fact]
        public void FetchItemByID()
        {
            //Arrange

            var moqClass = new Mock<IOceanOfGameObjectsDAL>();
            moqClass.Setup(x => x.FetchItemByIDFromDB(0)).Returns(new TestDataItem().FakeSIngleListOfData());
            //Act
            var res = moqClass.Object.FetchItemByIDFromDB(0);
            //Assert
            Assert.NotNull(res);
            Assert.IsType<GameObjectModel>(res);
            moqClass.Verify(x => x.FetchItemByIDFromDB(0), Times.Once);

        }

        [Fact]
        public void FetchItemByIDAndCategory()
        {
            //Arrange
            var moqClass = new Mock<IOceanOfGameObjectsDAL>();
            moqClass.Setup(x => x.FetchItemByIDAndCategoryFromDB(0, null)).Returns(new TestDataItem().FakeSIngleListOfData());
            //Act
            var res = moqClass.Object.FetchItemByIDAndCategoryFromDB(0, null);
            //Assert
            Assert.NotNull(res);
            Assert.IsType<GameObjectModel>(res);
            moqClass.Verify(x => x.FetchItemByIDAndCategoryFromDB(0, null), Times.Once);

        }
    }
}
