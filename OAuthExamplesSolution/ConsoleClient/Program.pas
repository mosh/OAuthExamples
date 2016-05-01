namespace ConsoleClient;

interface

uses
  System.Net.Http,
  System.Threading,
  IdentityModel.Client,
  System.Linq;

type

  Program = class
  private
    class method GetClientToken:TokenResponse;
    class method CallApi(response:TokenResponse);
    class method GetUserToken():TokenResponse;

  public
    class method Main(args: array of String): Int32;
  end;

implementation

class method Program.Main(args: array of String): Int32;
begin
  // add your own code here
  writeLn('The magic happens here.');

//  var tester := new APITester;
//  tester.performTest;
//  var response := GetClientToken;
  var response := GetUserToken;

  CallApi(response);

  writeLn('Finished');

end;

class method Program.GetClientToken: TokenResponse;
begin
  var client := new TokenClient(
        "http://localhost:5000/connect/token",
        "silicon",
        "F621F470-9731-4A25-80EF-67A6F7C5F4B8");

  if(assigned(client))then
  begin
      var scope := 'api1';
      var token:CancellationToken ;
      var t := client.RequestClientCredentialsAsync(scope,nil,token);
      t.Wait;
      exit t.Result;
  end
  else 
  begin
    Console.WriteLine('client is nil');
    exit nil;
  end;
end;

class method Program.GetUserToken():TokenResponse;
begin
  var client := new TokenClient(
  "http://localhost:5000/connect/token",
  "carbon",
  "21B5F798-BE55-42BC-8AA8-0025B903DC3B");

  var token:CancellationToken ;

  exit client.RequestResourceOwnerPasswordAsync("bob", "secret", "api1",nil,token).Result;
end;



class method Program.CallApi(response: TokenResponse);
begin
    var client := new HttpClient();
    client.SetBearerToken(response.AccessToken);

    Console.WriteLine(client.GetStringAsync("http://localhost:55247/test").Result);

end;




end.
