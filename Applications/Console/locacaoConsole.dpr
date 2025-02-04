program locacaoConsole;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uMenuPrincipal,
  uClientes in '..\..\Core\Models\uClientes.pas',
  uICasoDeUsoCliente in '..\..\Core\Ports\uICasoDeUsoCliente.pas',
  uResponse in '..\..\Core\Response\uResponse.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }

    Menu;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
