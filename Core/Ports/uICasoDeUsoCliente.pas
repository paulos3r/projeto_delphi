unit uICasoDeUsoCliente;

interface

uses uClientes, uResponse, uDTOCliente;

type
  ICasoDeUsoCliente=interface
    //cadastrar

    function Cadastrar(cliente:TCliente):Tresponse;

    //alterar

    function Alterar(cliente:TCliente):Tresponse;

    //excluir

    function Deletar(id : Integer): Tresponse;

    //consultar

    function Consultar(Dto: DTOCliente):Tresponse;
  end;

implementation

end.
