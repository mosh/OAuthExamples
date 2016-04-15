namespace IdentityServerConsoleApplication;

interface

uses
  System.Collections.Generic,
  System.Linq,
  System.Text, 
  IdentityServer3.Core.Models;

type

  Clients = public static class
  private
  protected
  public
    method Get:List<Client>;
  end;

implementation

method Clients.Get: List<Client>;
begin
  var clients := new List<Client>;

  clients.Add(new Client
            (
                ClientName := "Silicon-only Client",
                ClientId := "silicon",
                Enabled := true,
                AccessTokenType := AccessTokenType.Reference,
                Flow := Flows.ClientCredentials,
                ClientSecrets := new List<Secret>,
                AllowedScopes := new List<string>
          ));  

  clients[0].ClientSecrets.Add(new Secret("F621F470-9731-4A25-80EF-67A6F7C5F4B8".Sha256()));
  clients[0].AllowedScopes.Add("api1");

  exit clients;
end;

end.
