using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(hxg.Startup))]
namespace hxg
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
