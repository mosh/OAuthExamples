namespace IdentityServerConsoleApplication;

interface

uses
  System.Collections.Generic,
  System.Linq,
  System.Text, 
  IdentityServer3.Core.Services.InMemory;

type
  Users = public class
  private
  protected
  public
    class method Get:List<InMemoryUser>;
  end;

implementation

class method Users.Get: List<InMemoryUser>;
begin
  var users := new List<InMemoryUser>;
  users.AddRange(new InMemoryUser(UserName:='bob',Password:='secret',Subject:='1'));
  users.AddRange(new InMemoryUser(UserName:='alice',Password:='secret',Subject:='2'));

  exit Users;
end;

end.
