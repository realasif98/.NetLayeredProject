using Microsoft.AspNetCore.Authentication.AzureAD.UI;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authentication.OpenIdConnect;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Authorization;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.Identity.Web;
using Microsoft.IdentityModel.Logging;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using OceanOfGameObjects.BusinessLogic;
using OceanOfGameObjects.DataAccessLayer;
using OceanOfGameObjects.DataAccessLayer.DBConfig;
using OceanOfGameObjects.DataAccessLayer.Interfaces;
using OceanOfGameObjects.Middlewares.ExceptionMiddlewares;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace OceanOfGameObjects
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {

            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
            IdentityModelEventSource.ShowPII = true;
            services.AddTransient<IOceanOfGameObjectBusinessLogic, OceanOfGameObjectBusinessLogic>();
            services.AddTransient<IOceanOfGameObjectsDAL, OceanOfGameObjectsDAL>();
            services.AddSingleton<IConfig, Config>();
            services.AddTransient<IOceanOfObjectModelInsertDAL, OceanOfObjectModelInsertDAL>();
            services.AddControllers();

            services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
                .AddMicrosoftIdentityWebApi(Configuration, "AzureAd");
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "OceanOfGameObjects", Version = "v1", });
                
                c.AddSecurityDefinition("oauth2", new OpenApiSecurityScheme
                {
                    Type = SecuritySchemeType.OAuth2,
                    Flows = new OpenApiOAuthFlows()
                    {
                        Implicit = new OpenApiOAuthFlow()
                        {  
                            AuthorizationUrl = new Uri("https://login.microsoftonline.com/2e3c2564-f088-4467-9d66-52293953c58a/oauth2/v2.0/authorize"),
                            TokenUrl = new Uri("https://login.microsoftonline.com/2e3c2564-f088-4467-9d66-52293953c58a/oauth2/v2.0/token"),
                            Scopes = new Dictionary<string, string> {
                        {
                            $"api://069a5abe-320d-4e2d-8a68-3c7237b69a9e/access_as_user",
                            "Access_as_user"
                        }
                        
                       
                    }
                        }
                    }
                });
                c.AddSecurityRequirement(new OpenApiSecurityRequirement() {
                {
                    new OpenApiSecurityScheme {
                        Reference = new OpenApiReference {
                                Type = ReferenceType.SecurityScheme,
                                    Id = "oauth2"
                            },
                            Scheme = "oauth2",
                            Name = "oauth2",
                            In = ParameterLocation.Header
                    },
                    new List < string > ()
                }
                });
            });


        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
    
           
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c =>
                {
                    c.SwaggerEndpoint("/swagger/v1/swagger.json", "OceanOfGameObjects v1");
                    c.OAuthClientId("069a5abe-320d-4e2d-8a68-3c7237b69a9e");
                    c.OAuthUseBasicAuthenticationWithAccessCodeGrant();
                }
                );
                
            }

            app.ConfigureCustomExceptionMiddleware();

            app.UseHttpsRedirection();

            app.UseRouting();
            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });

        }
    }
}
