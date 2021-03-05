using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CaseCompetitionApp.Startup))]
namespace CaseCompetitionApp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
