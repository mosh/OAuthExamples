namespace ConsoleClient;

interface

uses
  System.Collections.Generic,
  System.Linq,
  System.Net.Http,
  System.Text, 
  IdentityModel.Client;

type

  APITester = public class
  private
    method GetClientToken:TokenResponse;
    method CallApi(response:TokenResponse);
  
  public
    method performTest;
  end;

implementation

method APITester.GetClientToken: TokenResponse;
begin
  var client := new TokenClient(
        "http://localhost:5000/connect/token",
        "silicon",
        "F621F470-9731-4A25-80EF-67A6F7C5F4B8");

  if(assigned(client))then
  begin
      var scope := 'api1';
      var t := client.RequestClientCredentialsAsync(scope);
      t.Wait;
      exit t.Result;
  end
  else 
  begin
    Console.WriteLine('client is nil');
    exit nil;
  end;
end;

method APITester.CallApi(response: TokenResponse);
begin
    var client := new HttpClient();
    client.SetBearerToken(response.AccessToken);

    Console.WriteLine(client.GetStringAsync("http://localhost:55247/test").Result);

end;

method APITester.performTest;
begin
  var response := GetClientToken;

  CallApi(response);

end;


end.
