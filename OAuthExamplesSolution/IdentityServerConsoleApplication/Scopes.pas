namespace IdentityServerConsoleApplication;

interface

uses
  System.Collections.Generic,
  System.Linq,
  System.Text, 
  IdentityServer3.Core.Models;

type
  Scopes = public static class
  private
  protected
  public
    method Get:List<Scope>;
  end;

implementation

method Scopes.Get: List<Scope>;
begin
  var value := new List<Scope>;
  value.Add(new Scope(Name:='api1'));
  exit value;
end;

end.
