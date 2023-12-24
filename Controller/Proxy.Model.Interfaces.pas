unit Proxy.Model.Interfaces;

interface

type
  iModelTipoDebCred = interface
    ['{C8A83964-E9AC-4124-85EB-13C6F20B76EF}']
    function ConsultaCodReduzido(Value: string): iModelTipoDebCred;
  end;

  iProxyTipoDebCred = interface
   ['{7CE9462E-28C1-43F4-959B-C08C2EA6476D}']
   function ConsultaCodReduzido(Value: string): iModelTipoDebCred;
  end;

implementation

end.
