object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnArray: TButton
    Left = 32
    Top = 32
    Width = 105
    Height = 25
    Caption = 'Arrays'
    TabOrder = 0
    OnClick = btnArrayClick
  end
  object btnStringGridDemo: TButton
    Left = 32
    Top = 63
    Width = 105
    Height = 25
    Caption = 'String Grid Demo'
    TabOrder = 1
    OnClick = btnStringGridDemoClick
  end
  object brnFormulas: TButton
    Left = 32
    Top = 94
    Width = 105
    Height = 25
    Caption = 'Formulas'
    TabOrder = 2
    OnClick = brnFormulasClick
  end
end
