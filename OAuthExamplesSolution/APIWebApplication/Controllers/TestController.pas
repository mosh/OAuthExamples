namespace APIWebApplication.Controllers;

interface

uses
  System.Collections.Generic,
  System.Linq,
  System.Security.Claims,
  System.Text, 
  System.Web.Http, 
  System.Web.UI.WebControls.Expressions;

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

  var subjectClaim := caller.FindFirst("sub");

  if(assigned(subjectClaim))Then
  begin
    exit Json(new class (message := 'OK computer', client := caller.FindFirst('client_id').Value, subject := subjectClaim.Value));
  end;

  exit Json(new class (message := 'OK computer', client := caller.FindFirst('client_id').Value));

end;

end.
