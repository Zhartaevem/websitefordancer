using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

namespace WebSiteForDancer
{
    public class Program
    {
        //public static void Main(string[] args)
        //{
        //    CreateWebHostBuilder(args).Build().Run();
        //}

        //public static IWebHostBuilder CreateWebHostBuilder(string[] args)
        //{
        //    var port = Environment.GetEnvironmentVariable("PORT");

        //    return WebHost.CreateDefaultBuilder(args)
        //                  .UseStartup<Startup>()
        //                  .UseUrls("http://*:" + port);
        //}


        public static void Main(string[] args)
        {
            CreateHostBuilder(args).Build().Run();
        }

        public static IHostBuilder CreateHostBuilder(string[] args)
        {
            var port = Environment.GetEnvironmentVariable("PORT");

            return Host.CreateDefaultBuilder(args).ConfigureWebHostDefaults(webBuilder =>
            {
                webBuilder.UseStartup<Startup>().UseUrls("http://*:" + port);
            });
        }

    }
}
