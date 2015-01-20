using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OnlineTheatreTicktes.Startup))]
namespace OnlineTheatreTicktes
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
