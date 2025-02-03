unit uClientes;

interface

type
  TCliente=class
  private
    Flogradouro: String;
    Fbairro: String;
    Fuf: String;
    Fcep: String;
    Fdocumento: String;
    Fid: Integer;
    Fcomplemento: String;
    Fnome: String;
    Fcidade: String;
    Ftelefone: String;
    procedure Setbairro(const Value: String);
    procedure Setcep(const Value: String);
    procedure Setcidade(const Value: String);
    procedure Setcomplemento(const Value: String);
    procedure Setdocumento(const Value: String);
    procedure Setid(const Value: Integer);
    procedure Setlogradouro(const Value: String);
    procedure Setnome(const Value: String);
    procedure Settelefone(const Value: String);
    procedure Setuf(const Value: String);
  published

  property id:Integer read Fid write Setid;
  property nome: String read Fnome write Setnome;
  property documento:String read Fdocumento write Setdocumento;
  property cep:String read Fcep write Setcep;
  property logradouro:String read Flogradouro write Setlogradouro;
  property complemento:String read Fcomplemento write Setcomplemento;
  property bairro:String read Fbairro write Setbairro;
  property cidade:String read Fcidade write Setcidade;
  property uf:String read Fuf write Setuf;
  property telefone:String read Ftelefone write Settelefone;

  end;

implementation

{ TCliente }

procedure TCliente.Setbairro(const Value: String);
begin
  Fbairro := Value;
end;

procedure TCliente.Setcep(const Value: String);
begin
  Fcep := Value;
end;

procedure TCliente.Setcidade(const Value: String);
begin
  Fcidade := Value;
end;

procedure TCliente.Setcomplemento(const Value: String);
begin
  Fcomplemento := Value;
end;

procedure TCliente.Setdocumento(const Value: String);
begin
  Fdocumento := Value;
end;

procedure TCliente.Setid(const Value: Integer);
begin
  Fid := Value;
end;

procedure TCliente.Setlogradouro(const Value: String);
begin
  Flogradouro := Value;
end;

procedure TCliente.Setnome(const Value: String);
begin
  Fnome := Value;
end;

procedure TCliente.Settelefone(const Value: String);
begin
  Ftelefone := Value;
end;

procedure TCliente.Setuf(const Value: String);
begin
  Fuf := Value;
end;

end.
