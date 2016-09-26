using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RegistroTelefono.Startup))]
namespace RegistroTelefono
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
