#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

#Depending on the operating system of the host machines(s) that will build or run the containers, the image specified in the FROM statement may need to be changed.
#For more information, please see https://aka.ms/containercompat

FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443
ENV ASPNETCORE_URLS=http://*:44361

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ["OceanOfGameObjects/OceanOfGameObjects.csproj", "OceanOfGameObjects/"]
COPY ["OceanOfGameObjects.DataAccessLayer/OceanOfGameObjects.DataAccessLayer.csproj", "OceanOfGameObjects.DataAccessLayer/"]
COPY ["OceanOfGameObjects.Model/OceanOfGameObjects.Shared.csproj", "OceanOfGameObjects.Model/"]
COPY ["OceanOfGameObjects.Controllers/OceanOfGameObjects.Controllers.csproj", "OceanOfGameObjects.Controllers/"]
COPY ["OceanOfGameObjects.BusinessLogic/OceanOfGameObjects.BusinessLogic.csproj", "OceanOfGameObjects.BusinessLogic/"]
RUN dotnet restore "OceanOfGameObjects/OceanOfGameObjects.csproj"
COPY . .
WORKDIR "/src/OceanOfGameObjects"
RUN dotnet build "OceanOfGameObjects.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "OceanOfGameObjects.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "OceanOfGameObjects.dll"]