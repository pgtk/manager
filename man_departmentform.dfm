object DepartmentForm: TDepartmentForm
  Left = 808
  Top = 203
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077
  ClientHeight = 164
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 132
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1076#1077#1083#1077#1085#1080#1103
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 129
    Height = 13
    Caption = #1047#1072#1074#1077#1076#1091#1102#1097#1072#1103' '#1086#1090#1076#1077#1083#1077#1085#1080#1077#1084
  end
  object DepartmentName: TDBEdit
    Left = 8
    Top = 40
    Width = 401
    Height = 21
    DataField = 'dp_Name'
    DataSource = MainForm.DepartmentSource
    TabOrder = 0
  end
  object MasterLookupListBox: TDBLookupComboBox
    Left = 8
    Top = 88
    Width = 401
    Height = 21
    DataField = 'dp_mastercode'
    DataSource = MainForm.DepartmentSource
    KeyField = 'wk_pcode'
    ListField = 'wk_Name'
    ListSource = MainForm.WorkerSource
    TabOrder = 1
  end
  object OkBtn: TButton
    Left = 136
    Top = 128
    Width = 75
    Height = 25
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object CancelBtn: TButton
    Left = 216
    Top = 128
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 3
  end
end
