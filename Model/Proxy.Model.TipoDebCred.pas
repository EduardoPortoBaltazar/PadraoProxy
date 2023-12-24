unit Proxy.Model.TipoDebCred;

interface

uses
  Proxy.Model.Interfaces,
  System.Generics.Collections;

type
  TProxyModelTipoDebCred = class (TInterfacedObject, iModelTipoDebCred)

  private

  public
    function ConsultaCodReduzido(Value: string): iModelTipoDebCred;

  constructor Create;
  destructor Destroy; override;
  class function New: iModelTipoDebCred;

  end;

implementation

uses
  Winapi.Windows;

{ TProxyModelTipoDebCred }

function TProxyModelTipoDebCred.ConsultaCodReduzido(Value: string): iModelTipoDebCred;
begin
  Result := Self;
  Sleep(5000);
end;

constructor TProxyModelTipoDebCred.Create;
begin

end;

destructor TProxyModelTipoDebCred.Destroy;
begin
  inherited;
end;

class function TProxyModelTipoDebCred.New: iModelTipoDebCred;
begin
  Result := Self.Create;
end;

end.
