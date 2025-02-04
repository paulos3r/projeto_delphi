unit uResponse;

interface

uses system.Generics.Collections;

type
  Tresponse=record

  sucess   :Boolean;
  ErrorCode:Integer;
  Message  :String;
  Data     :TObjectList<TObject>;

  end;

implementation

end.
