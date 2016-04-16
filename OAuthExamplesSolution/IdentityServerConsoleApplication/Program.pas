namespace IdentityServerConsoleApplication;

interface

uses
  System.Linq, 
  Microsoft.Owin.Hosting,
  
  Serilog.*;

type
  Program = class
  public
    class method Main(args: array of String): Int32;
  end;

implementation

class method Program.Main(args: array of String): Int32;
begin
  // add your own code here
  writeLn('The magic happens here.');

  var config := new LoggerConfiguration;

  var logger := config.WriteTo.LiterateConsole(0,'{Timestamp:HH:mm} [{Level}] ({Name:l}){NewLine} {Message}{NewLine}{Exception}',nil).CreateLogger;

    //.LiterateConsole(outputTemplate: '{Timestamp:HH:mm} [{Level}] ({Name:l}){NewLine} {Message}{NewLine}{Exception}')
    //.CreateLogger()
    ;

  // hosting identityserver
  using (WebApp.Start<Startup>('http://localhost:5000')) do
  begin
    Console.WriteLine('server running...');
    Console.ReadLine();
  end;

end;

end.
