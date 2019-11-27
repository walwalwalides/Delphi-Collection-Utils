object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'DefineStringList'
  ClientHeight = 382
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnADD: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 0
    OnClick = btnADDClick
  end
  object GroupBox1: TGroupBox
    Left = 400
    Top = 269
    Width = 227
    Height = 105
    Caption = 'Duplicate'
    TabOrder = 1
    object btnShowstrList2: TButton
      Left = 125
      Top = 40
      Width = 75
      Height = 25
      Caption = 'StringList2'
      TabOrder = 0
      OnClick = btnShowstrList2Click
    end
    object btnShowstrList1: TButton
      Left = 16
      Top = 40
      Width = 75
      Height = 25
      Caption = 'StringList1'
      TabOrder = 1
      OnClick = btnShowstrList1Click
    end
  end
  object btnCompaire: TButton
    Left = 488
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Compaire'
    TabOrder = 2
    OnClick = btnCompaireClick
  end
  object Button2: TButton
    Left = 280
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 160
    Top = 96
  end
end
