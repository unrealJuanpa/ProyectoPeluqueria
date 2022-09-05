using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProyectoPeluqueria.Startup))]
namespace ProyectoPeluqueria
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
