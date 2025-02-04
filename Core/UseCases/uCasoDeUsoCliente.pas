unit uCasoDeUsoCliente;

interface

uses uICasoDeUsoCliente, system.SysUtils, uClientes, uDTOCliente, uResponse;

type

  TCasoDeUsoCliente=class(TInterfacedObject,ICasoDeUsoCliente)

  function Cadastrar(cliente:TCliente):Tresponse;
  function Alterar(clinete:TCliente):Tresponse;
  function Deletar(id:Integer):Tresponse;
  function Consultar(Dto:DTOCliente):Tresponse;

  end;

implementation

{ TCasoDeUsoCliente }

function TCasoDeUsoCliente.Alterar(clinete: TCliente): Tresponse;
begin

end;

function TCasoDeUsoCliente.Cadastrar(cliente: TCliente): Tresponse;
begin

end;

function TCasoDeUsoCliente.Consultar(Dto: DTOCliente): Tresponse;
begin

end;

function TCasoDeUsoCliente.Deletar(id: Integer): Tresponse;
begin

end;

end.
