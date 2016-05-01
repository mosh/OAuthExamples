namespace IdentityServerConsoleApplication;

interface

uses
  System.Collections.Generic,
  System.Linq,
  System.Text, 
  IdentityServer3.Core.Configuration,
  IdentityServer3.Core.Services.InMemory,
  Owin;

type
  Startup = public class
  private
  protected
  public
    method Configuration(app:IAppBuilder);
  end;

implementation

method Startup.Configuration(app: IAppBuilder);
begin
  var options := new IdentityServerOptions(
    Factory := new IdentityServerServiceFactory()
      .UseInMemoryClients(Clients.Get)
      .UseInMemoryScopes(Scopes.Get)
      .UseInMemoryUsers(Users.Get),
      RequireSsl:=false
  );
  app.UseIdentityServer(options);
end;

end.
