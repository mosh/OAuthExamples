namespace APIWebApplication;

interface

uses
  System.Collections.Generic,
  System.Linq,
  System.Text, 
  System.Web.Http,
  IdentityServer3.AccessTokenValidation,
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

  app.UseIdentityServerBearerTokenAuthentication(new IdentityServerBearerTokenAuthenticationOptions
        (
            Authority := "http://localhost:5000",
            ValidationMode := ValidationMode.ValidationEndpoint,
            RequiredScopes := [ "api1"]
        ));

    // configure web api
    var config := new HttpConfiguration();
    config.MapHttpAttributeRoutes();

    // require authentication for all controllers
    config.Filters.Add(new AuthorizeAttribute());

    app.UseWebApi(config);
end;

end.
