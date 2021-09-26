using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using OceanOfGameObjects.Controllers;
using OceanOfGameObjects.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace OceanOfGameObjects.Middlewares.ExceptionMiddlewares
{
    public class ExceptionMiddleware
    {
        private readonly RequestDelegate _next;
        private readonly ILogger<OceanOfGameObjectsController> _logger;

        public ExceptionMiddleware(RequestDelegate next, ILogger<OceanOfGameObjectsController> logger)
        {
            _logger = logger;
            _next = next;
        }

        public async Task InvokeAsync(HttpContext httpContext)
        {
            try
            {
                await _next(httpContext);
            }
            catch (Exception ex)
            {
                _logger.LogError($"Something went wrong: {ex}");
                await HandleExceptionAsync(httpContext, ex);
            }
        }

        private async Task HandleExceptionAsync(HttpContext context, Exception exception)
        {
            context.Response.ContentType = "application/json";
            context.Response.StatusCode =  Constant.UNKNOWN_ERROR;

            var message = exception switch
            {
                AccessViolationException => Constant.ACCESS_VOILATION,
                NotImplementedException => Constant.NOT_IMPLEMENTATION,
                _ => Constant.INTERNAL_SERVER_ERROR
            };
            
            await context.Response.WriteAsync(new ErrorDetails()
            {
                StatusCode = context.Response.StatusCode,
                Message = message
            }.ToString());
        }
    }
}
