object SchoolForm: TSchoolForm
  Left = 779
  Top = 162
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1090#1077#1083#1100#1085#1086#1077' '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1077
  ClientHeight = 219
  ClientWidth = 353
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
  object NameEdit: TLabeledEdit
    Left = 8
    Top = 24
    Width = 337
    Height = 21
    EditLabel.Width = 76
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 0
  end
  object RNameEdit: TLabeledEdit
    Left = 8
    Top = 64
    Width = 337
    Height = 21
    EditLabel.Width = 196
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074' '#1088#1086#1076#1080#1090#1077#1083#1100#1085#1086#1084' '#1087#1072#1076#1077#1078#1077
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 1
  end
  object MinistryEdit: TLabeledEdit
    Left = 8
    Top = 104
    Width = 337
    Height = 21
    EditLabel.Width = 73
    EditLabel.Height = 13
    EditLabel.Caption = #1052#1080#1085#1080#1089#1090#1077#1088#1089#1090#1074#1086
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 2
  end
  object PlaceEdit: TLabeledEdit
    Left = 8
    Top = 144
    Width = 337
    Height = 21
    EditLabel.Width = 200
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1079#1072#1074#1077#1076#1077#1085#1080#1103
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 3
  end
  object OkBtn: TButton
    Left = 104
    Top = 184
    Width = 75
    Height = 25
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 4
  end
  object CancelBtn: TButton
    Left = 184
    Top = 184
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 5
  end
end
