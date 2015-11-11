object SubjectForm: TSubjectForm
  Left = 785
  Top = 133
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1088#1077#1076#1084#1077#1090
  ClientHeight = 95
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    376
    95)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 66
    Width = 19
    Height = 13
    Caption = #1058#1080#1087
    Enabled = False
    Visible = False
  end
  object SubjectEdit: TLabeledEdit
    Left = 8
    Top = 32
    Width = 361
    Height = 21
    EditLabel.Width = 76
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 0
    OnChange = SubjectEditChange
  end
  object OkBtn: TButton
    Left = 199
    Top = 64
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object CancelBtn: TButton
    Left = 279
    Top = 64
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
  object KindComboBox: TComboBox
    Left = 32
    Top = 62
    Width = 145
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 3
    Visible = False
    OnChange = KindComboBoxChange
    Items.Strings = (
      #1043#1086#1088#1086#1076
      #1055#1086#1089#1077#1083#1086#1082
      #1057#1077#1083#1086
      #1055#1086#1089#1077#1083#1086#1082' '#1075#1086#1088#1086#1076#1089#1082#1086#1075#1086' '#1090#1080#1087#1072
      #1044#1077#1088#1077#1074#1085#1103)
  end
end
