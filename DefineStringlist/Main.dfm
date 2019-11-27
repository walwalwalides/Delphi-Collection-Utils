object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'DefineStringList'
  ClientHeight = 459
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 241
    Top = 8
    Width = 227
    Height = 105
    Caption = 'Duplicate'
    TabOrder = 0
    object btnShowstrList2: TButton
      Left = 117
      Top = 40
      Width = 75
      Height = 25
      Caption = 'StringList2'
      TabOrder = 0
      OnClick = btnShowstrList2Click
    end
    object btnShowstrList1: TButton
      Left = 36
      Top = 40
      Width = 75
      Height = 25
      Caption = 'StringList1'
      TabOrder = 1
      OnClick = btnShowstrList1Click
    end
  end
  object GrpBoxCompaire: TGroupBox
    Left = 474
    Top = 8
    Width = 227
    Height = 105
    Caption = 'Compaire'
    TabOrder = 1
    object btnCompaire: TButton
      Left = 76
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Compaire'
      TabOrder = 0
      OnClick = btnCompaireClick
    end
  end
  object GrpBoxAdd: TGroupBox
    Left = 8
    Top = 8
    Width = 227
    Height = 105
    Caption = 'Add'
    TabOrder = 2
    object btnADD: TButton
      Left = 76
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Add'
      TabOrder = 0
      OnClick = btnADDClick
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 376
    Top = 288
  end
  object MainMenu1: TMainMenu
    Left = 80
    Top = 208
    object File1: TMenuItem
      Caption = 'File'
      object OpenFiles1: TMenuItem
        Action = actOpenFile
      end
      object OpenFolders1: TMenuItem
        Action = actOpenFolder
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Action = actExit
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object CopytoClipboard1: TMenuItem
        Action = actCopyToClipboard
      end
    end
    object View1: TMenuItem
      Caption = 'View'
      object Refresh1: TMenuItem
        Action = actRefresh
      end
    end
    object A1: TMenuItem
      Caption = 'Action'
      object C1: TMenuItem
        Action = actClear
      end
      object miSum: TMenuItem
        Action = actSum
        Enabled = False
      end
    end
    object Option1: TMenuItem
      Caption = 'Option'
      object actOption1: TMenuItem
        Action = actSettings
      end
    end
    object A2: TMenuItem
      Caption = 'About'
      object actAbout1: TMenuItem
        Action = actAbout
      end
    end
  end
  object ActionList1: TActionList
    Left = 161
    Top = 184
    object actClear: TAction
      Category = 'Action'
      Caption = 'Clear'
      ShortCut = 16451
    end
    object actSum: TAction
      Category = 'Action'
      Caption = 'Sum'
      ShortCut = 16467
    end
    object actOpenFile: TAction
      Category = 'File'
      Caption = 'Open File(s)...'
    end
    object actShowInExplorer: TAction
      Caption = 'Show in Explorer'
    end
    object actOpenFolder: TAction
      Category = 'File'
      Caption = 'Open Folder(s)...'
    end
    object actExit: TAction
      Category = 'File'
      Caption = 'Exit'
      OnExecute = actExitExecute
    end
    object actCopyToClipboard: TAction
      Category = 'Edit'
      Caption = 'Copy to Clipboard'
      ShortCut = 16451
    end
    object actRefresh: TAction
      Category = 'View'
      Caption = 'Refresh'
      ShortCut = 116
    end
    object actSettings: TAction
      Category = 'Option'
      Caption = 'Settings'
      ShortCut = 16467
    end
    object actAbout: TAction
      Category = 'About'
      Caption = 'Info'
      ShortCut = 16457
      OnExecute = actAboutExecute
    end
  end
end
