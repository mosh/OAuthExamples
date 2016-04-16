namespace APIWebApplication.Controllers;

interface

uses
  System.Collections.Generic,
  System.Linq,
  System.Security.Claims,
  System.Text, 
  System.Web.Http;

type

  [Route("test")]
  TestController = public class(APIController)
  private
  protected
  public
    method Get:IHttpActionResult;
  end;

implementation

method TestController.Get: IHttpActionResult;
begin
  var caller := User as ClaimsPrincipal;

  exit Json(new class (message := 'OK computer', client := caller.FindFirst('client_id').Value));


end;

end.
