unit Proxy.Model.Produto.Proxy;

interface

uses
  System.Classes,
  system.Generics.Collections,
  Proxy.Model.Interfaces;

type
  TProxyModelProdutoProxy = class(TInterfacedObject, iProxyTipoDebCred)

  private
    Flist: TDictionary<string, iModelTipoDebCred>;

  public
    function ConsultaCodReduzido(Value: string): iModelTipoDebCred;

    constructor Create;
    destructor Destroy; override;
    class function New :iProxyTipoDebCred;

  end;


implementation

uses
  Proxy.Model.TipoDebCred;

{ TProxyModelProdutoProxy }

function TProxyModelProdutoProxy.ConsultaCodReduzido(Value: string): iModelTipoDebCred;
begin
  if not Flist.TryGetValue(Value, Result) then
  begin
    Result := TProxyModelTipoDebCred.New.ConsultaCodReduzido(Value);
    Flist.Add(Value, Result);
  end;
end;

constructor TProxyModelProdutoProxy.Create;
begin
  Flist :=  TDictionary<string, iModelTipoDebCred>.Create;
end;

destructor TProxyModelProdutoProxy.Destroy;
begin
  Flist.Free;
  inherited;
end;

class function TProxyModelProdutoProxy.New: iProxyTipoDebCred;
begin
  Result := Self.Create;
end;

end.
