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

  // no human involved
  var newClient := new Client
            (
                ClientName := "Silicon-only Client",
                ClientId := "silicon",
                Enabled := true,
                AccessTokenType := AccessTokenType.Reference,
                Flow := Flows.ClientCredentials,
                ClientSecrets := new List<Secret>,
                AllowedScopes := new List<String>
          );  

  newClient.ClientSecrets.Add(new Secret("F621F470-9731-4A25-80EF-67A6F7C5F4B8".Sha256()));
  newClient.AllowedScopes.Add("api1");
  clients.Add(newClient);

  // human is involved
  newClient := new Client
                (
                    ClientName := "Silicon on behalf of Carbon Client",
                    ClientId  := "carbon",
                    Enabled := true,
                    AccessTokenType := AccessTokenType.Reference,
                    Flow := Flows.ResourceOwner,
                    ClientSecrets := new List<Secret>,
                    AllowedScopes := new List<String>
                );
  newClient.ClientSecrets.Add(new Secret("21B5F798-BE55-42BC-8AA8-0025B903DC3B".Sha256()) );
  newClient.AllowedScopes.Add("api1");

  clients.Add(newClient);

  exit clients;
end;

end.
