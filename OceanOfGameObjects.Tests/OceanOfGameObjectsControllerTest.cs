using Microsoft.Extensions.Logging;
using Moq;
using OceanOfGameObjects.BusinessLogic;
using OceanOfGameObjects.Controllers;
using OceanOfGameObjects.Model;
using System;
using System.Linq;
using Xunit;

namespace OceanOfGameObjects.Tests
{
    public class OceanOfGameObjectsControllerTest
    {
        [Fact]
        public void GetAllItem()
        {
            //Arrange
            var moqClass = new Mock<IOceanOfGameObjectsController>();
            moqClass.Setup(x => x.GetAllItem()).Returns(new TestDataItem().FakeListOfData()); 
            //Act
            var res = moqClass.Object.GetAllItem();
            //Assert
            Assert.NotNull(res);
            Assert.Equal(2, res.Count());
            moqClass.Verify(x => x.GetAllItem(), Times.Once);


            //other way 

            //Arrange
            var mockLogger = new Mock<ILogger<OceanOfGameObjectsController>>();
            var mockBusiness = new Mock<IOceanOfGameObjectBusinessLogic>();
            mockBusiness.Setup(x => x.GetAllItemFromDB()).Returns(new TestDataItem().FakeListOfData());
            var reqObject = new OceanOfGameObjectsController(mockLogger.Object, mockBusiness.Object);
            //Act
            res = reqObject.GetAllItem();
            //Assert

            Assert.NotNull(res);
            mockBusiness.Verify(x => x.GetAllItemFromDB(), Times.Once);

        }


        [Fact]
        public void GetItemById()
        {
            //Arrange
            var moqClass = new Mock<IOceanOfGameObjectsController>();
            moqClass.Setup(x => x.GetItemById(0)).Returns(new TestDataItem().FakeSIngleListOfData());
            //Act
            var res = moqClass.Object.GetItemById(0);
            //Assert
            Assert.NotNull(res); 
            Assert.IsType<GameObjectModel>(res);
            moqClass.Verify(x => x.GetItemById(0), Times.Once);

            //other way 

            //Arrange
            var mockLogger = new Mock<ILogger<OceanOfGameObjectsController>>();
            var mockBusiness = new Mock<IOceanOfGameObjectBusinessLogic>();
            mockBusiness.Setup(x => x.GetItemByIDFromDB(0)).Returns(new TestDataItem().FakeSIngleListOfData());
            var reqObject = new OceanOfGameObjectsController(mockLogger.Object, mockBusiness.Object);
            //Act
            res = reqObject.GetItemById(0);
            //Assert

            Assert.NotNull(res);
            mockBusiness.Verify(x => x.GetItemByIDFromDB(0), Times.Once);

        }

        [Fact]
        public void GetItemByName()
        {
            //Arrange

            var moqClass = new Mock<IOceanOfGameObjectsController>();
            moqClass.Setup(x => x.GetItemByName(null)).Returns(new TestDataItem().FakeSIngleListOfData());
            //Act
            var res = moqClass.Object.GetItemByName(null);
            //Assert
            Assert.NotNull(res);
            Assert.IsType<GameObjectModel>(res);
            moqClass.Verify(x => x.GetItemByName(null), Times.Once);

            //other way 

            //Arrange
            var mockLogger = new Mock<ILogger<OceanOfGameObjectsController>>();
            var mockBusiness = new Mock<IOceanOfGameObjectBusinessLogic>();
            mockBusiness.Setup(x => x.GetItemByNameFromDB(null)).Returns(new TestDataItem().FakeSIngleListOfData());
            var reqObject = new OceanOfGameObjectsController(mockLogger.Object, mockBusiness.Object);
            //Act
            res = reqObject.GetItemByName(null);
            //Assert

            Assert.NotNull(res);
            mockBusiness.Verify(x => x.GetItemByNameFromDB(null), Times.Once);
        }

        [Fact]
        public void GetItemByIdAndCategory()
        {
            //Arrange

            var moqClass = new Mock<IOceanOfGameObjectsController>();
            moqClass.Setup(x => x.GetItemByIdAndCategory(null)).Returns(new TestDataItem().FakeListOfData());
            //Act
            var res = moqClass.Object.GetItemByIdAndCategory(null);
            //Assert
            Assert.NotNull(res);
            Assert.Equal(2, res.Count());
            moqClass.Verify(x => x.GetItemByIdAndCategory(null), Times.Once);


            //other way 

            //Arrange
            var mockLogger = new Mock<ILogger<OceanOfGameObjectsController>>();
            var mockBusiness = new Mock<IOceanOfGameObjectBusinessLogic>();
            mockBusiness.Setup(x => x.GetItemByCategoryFromDB(null)).Returns(new TestDataItem().FakeListOfData());
            var reqObject = new OceanOfGameObjectsController(mockLogger.Object, mockBusiness.Object);
            //Act
            res = reqObject.GetItemByIdAndCategory(null);
            //Assert

            Assert.NotNull(res);
            mockBusiness.Verify(x => x.GetItemByCategoryFromDB(null), Times.Once);

        }

        [Fact]
        public void GetItemByType()
        {
            //Arrange

            var moqClass = new Mock<IOceanOfGameObjectsController>();
            moqClass.Setup(x => x.GetItemByType(null)).Returns(new TestDataItem().FakeListOfData());
            //Act
            var res = moqClass.Object.GetItemByType(null);
            //Assert
            Assert.NotNull(res);
            Assert.Equal(2, res.Count());
            moqClass.Verify(x => x.GetItemByType(null), Times.Once);


            //other way 

            //Arrange
            var mockLogger = new Mock<ILogger<OceanOfGameObjectsController>>();
            var mockBusiness = new Mock<IOceanOfGameObjectBusinessLogic>();
            mockBusiness.Setup(x => x.GetItemByTypeFromDB(null)).Returns(new TestDataItem().FakeListOfData());
            var reqObject = new OceanOfGameObjectsController(mockLogger.Object, mockBusiness.Object);
            //Act
            res = reqObject.GetItemByType(null);
            //Assert

            Assert.NotNull(res);
            mockBusiness.Verify(x => x.GetItemByTypeFromDB(null), Times.Once);

        }

        [Fact]
        public void GetItemByDate()
        {
            //Arrange

            var moqClass = new Mock<IOceanOfGameObjectsController>();
            moqClass.Setup(x => x.GetItemByDate(new DateTime())).Returns(new TestDataItem().FakeListOfData());
            //Act
            var res = moqClass.Object.GetItemByDate(new DateTime());
            //Assert
            Assert.NotNull(res);
            Assert.Equal(2, res.Count());
            moqClass.Verify(x => x.GetItemByDate(new DateTime()), Times.Once);

            //other way 

            //Arrange
            var mockLogger = new Mock<ILogger<OceanOfGameObjectsController>>();
            var mockBusiness = new Mock<IOceanOfGameObjectBusinessLogic>();
            mockBusiness.Setup(x => x.GetItemByDateFromDB(new DateTime())).Returns(new TestDataItem().FakeListOfData());
            var reqObject = new OceanOfGameObjectsController(mockLogger.Object, mockBusiness.Object);
            //Act
            res = reqObject.GetItemByDate(new DateTime());
            //Assert

            Assert.NotNull(res);
            mockBusiness.Verify(x => x.GetItemByDateFromDB(new DateTime()), Times.Once);

        }

        [Fact]
        public void GetLatestItem()
        {
            //Arrange

            var moqClass = new Mock<IOceanOfGameObjectsController>();
            moqClass.Setup(x => x.GetLatestItem()).Returns(new TestDataItem().FakeListOfData());
            //Act
            var res = moqClass.Object.GetLatestItem();
            //Assert
            Assert.NotNull(res);
            Assert.Equal(2, res.Count());
            moqClass.Verify(x => x.GetLatestItem(), Times.Once);

            //other way 

            //Arrange
            var mockLogger = new Mock<ILogger<OceanOfGameObjectsController>>();
            var mockBusiness = new Mock<IOceanOfGameObjectBusinessLogic>();
            mockBusiness.Setup(x => x.GetItemByDateFromDB(new DateTime())).Returns(new TestDataItem().FakeListOfData());
            var reqObject = new OceanOfGameObjectsController(mockLogger.Object, mockBusiness.Object);
            //Act
            res = reqObject.GetLatestItem();
            //Assert
            Assert.NotNull(res);
            mockBusiness.Verify(x => x.GetItemByDateFromDB(new DateTime()), Times.Once);

        }
    }
}
