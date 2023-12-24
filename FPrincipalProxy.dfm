object frmProxy: TfrmProxy
  Left = 0
  Top = 0
  Caption = 'Padr'#227'o Proxy'
  ClientHeight = 455
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object c: TLabel
    Left = 9
    Top = 62
    Width = 130
    Height = 15
    Caption = 'Codigo do Tipo DecCred'
  end
  object Memo1: TMemo
    Left = 360
    Top = 0
    Width = 336
    Height = 455
    Align = alRight
    TabOrder = 0
    ExplicitLeft = 356
    ExplicitHeight = 454
  end
  object Edit1: TEdit
    Left = 8
    Top = 80
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'Edit1'
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 109
    Width = 121
    Height = 25
    Caption = 'Consultar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
