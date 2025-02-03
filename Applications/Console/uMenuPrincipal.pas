unit uMenuPrincipal;

interface

uses
  Winapi.Windows,
  System.SysUtils;

procedure Menu;
procedure Clean;
function Modulo:String;

// modulo cliente
procedure MenuCliente;
procedure CadastrarCliente;
procedure AlterarCliente;
procedure EditarCliente;
procedure ConsultarCliente;
procedure ExcluirCliente;

// modulo Veiculo
procedure MenuVeiculo;
procedure CadastrarVeiculo;
procedure AlterarVeiculo;
procedure EditarVeiculo;
procedure ConsultarVeiculo;
procedure ExcluirVeiculo;

// modulo Loca��o
procedure MenuLocacao;
procedure CadastrarLocacao;
procedure AlterarLocacao;
procedure EditarLocacao;
procedure ConsultarLocacao;
procedure ExcluirLocacao;


implementation

function Modulo:String;
begin
  Result := '1 - Cadastrar '  + #13#10  +
            '2 - Alterar '    + #13#10  +
            '3 - Editar '     + #13#10  +
            '4 - Consultar '  + #13#10  +
            '5 - Excluir '    + #13#10  +
            '6 - Voltar ';
end;

procedure Clean;
var
  stdout: THandle;
  csbi: TConsoleScreenBufferInfo;
  consoleSize: DWORD;
  numWritten: DWORD;
  origin: TCoord;
begin
  stdout := GetStdHandle(STD_OUTPUT_HANDLE);
  Win32Check(stdout<>INVALID_HANDLE_VALUE);
  Win32Check(GetConsoleScreenBufferInfo(stdout, csbi));
  consoleSize := csbi.dwSize.X * csbi.dwSize.Y;
  origin.X := 0;
  origin.Y := 0;
  Win32Check(FillConsoleOutputCharacter(stdout, ' ', consoleSize, origin,
    numWritten));
  Win32Check(FillConsoleOutputAttribute(stdout, csbi.wAttributes, consoleSize, origin,
    numWritten));
  Win32Check(SetConsoleCursorPosition(stdout, origin));

end;

procedure Menu;
  // 1 menu de cliente
  // 2 menu de veiculo
  // 3 menu de loca��o
var
  codigo:Integer;
  modulo:String;
begin
  clean;
  Writeln('Menu Principal');
  Writeln;

  modulo := '1 - Clientes' + #13#10 +
            '2 - Ve�culos' + #13#10 +
            '3 - Loca��o ';

  Writeln(modulo);
  Write(Output,'Op��o: ');
  Readln(Input,codigo);

  case codigo of
    1 : MenuCliente;
    2 : MenuVeiculo;
    3 : MenuLocacao;
    else
      Writeln('Op��o Invalida');
      Readln;
      Menu;
  end;

end;
{$region 'CLIENTE'}

procedure MenuCliente;
  // 1 menu de cliente
  // 2 menu de veiculo
  // 3 menu de loca��o
var
  codigo:Integer;
begin
  clean;
  Writeln('Menu Cliente');
  Writeln;

  Writeln(Modulo);
  Write(Output,'Op��o: ');
  Readln(Input,codigo);

  case codigo of
    1 : CadastrarCliente;
    2 : AlterarCliente;
    3 : EditarCliente;
    4 : ConsultarCliente;
    5 : ExcluirCliente;
    6 : Menu;
    else
      Writeln('Op��o Invalida');
      Readln;
  end;
end;

procedure CadastrarCliente;
begin
  Clean;
  Writeln('Op��o Cadastrar');
  Readln;
  Menu;
end;
procedure AlterarCliente;
begin
  Clean;
  Writeln('Op��o Alterar');
  Readln;
  Menu;
end;
procedure EditarCliente;
begin
  Clean;
  Writeln('Op��o Editar');
  Readln;
  Menu;
end;
procedure ConsultarCliente;
begin
  Clean;
  Writeln('Op��o Consultar');
  Readln;
  Menu;
end;
procedure ExcluirCliente;
begin
  Clean;
  Writeln('Op��o Excluir');
  Readln;
  Menu;
end;

{$endregion}

{$region 'VEICULOS'}
procedure MenuVeiculo;
  // 1 menu de cliente
  // 2 menu de veiculo
  // 3 menu de loca��o
var
  codigo:Integer;
begin
  clean;
  Writeln('Menu Veiculo');
  Writeln;

  Writeln(Modulo);
  Write(Output,'Op��o: ');
  Readln(Input,codigo);

  case codigo of
    1 : CadastrarVeiculo;
    2 : AlterarVeiculo;
    3 : EditarVeiculo;
    4 : ConsultarVeiculo;
    5 : ExcluirVeiculo;
    6 : Menu;
    else
      Writeln('Op��o Invalida');
      Readln;
  end;
end;

procedure CadastrarVeiculo;
begin
  Clean;
  Writeln('Op��o Cadastrar');
  Readln;
  Menu;
end;
procedure AlterarVeiculo;
begin
  Clean;
  Writeln('Op��o Alterar');
  Readln;
  Menu;
end;
procedure EditarVeiculo;
begin
  Clean;
  Writeln('Op��o Editar');
  Readln;
  Menu;
end;
procedure ConsultarVeiculo;
begin
  Clean;
  Writeln('Op��o Consultar');
  Readln;
  Menu;
end;
procedure ExcluirVeiculo;
begin
  Clean;
  Writeln('Op��o Excluir');
  Readln;
  Menu;
end;
{$endregion}

{$region 'LOCA��O'}
procedure MenuLocacao;
  // 1 menu de cliente
  // 2 menu de veiculo
  // 3 menu de loca��o
var
  codigo:Integer;
begin
  clean;
  Writeln('Menu Loca��o');
  Writeln;

  Writeln(Modulo);
  Write(Output,'Op��o: ');
  Readln(Input,codigo);

  case codigo of
    1 : CadastrarLocacao;
    2 : AlterarLocacao;
    3 : EditarLocacao;
    4 : ConsultarLocacao;
    5 : ExcluirLocacao;
    6 : Menu;
    else
      Writeln('Op��o Invalida');
      Readln;
  end;
end;

procedure CadastrarLocacao;
begin
  Clean;
  Writeln('Op��o Cadastrar');
  Readln;
  Menu;
end;
procedure AlterarLocacao;
begin
  Clean;
  Writeln('Op��o Alterar');
  Readln;
  Menu;
end;
procedure EditarLocacao;
begin
  Clean;
  Writeln('Op��o Editar');
  Readln;
  Menu;
end;
procedure ConsultarLocacao;
begin
  Clean;
  Writeln('Op��o Consultar');
  Readln;
  Menu;
end;
procedure ExcluirLocacao;
begin
  Clean;
  Writeln('Op��o Excluir');
  Readln;
  Menu;
end;
{$endregion}

end.
