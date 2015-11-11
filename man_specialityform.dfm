object SpecialityForm: TSpecialityForm
  Left = 864
  Top = 163
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
  ClientHeight = 216
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    354
    216)
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
  object SpecializationEdit: TLabeledEdit
    Left = 8
    Top = 64
    Width = 337
    Height = 21
    EditLabel.Width = 79
    EditLabel.Height = 13
    EditLabel.Caption = #1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 1
  end
  object KvalificationEdit: TLabeledEdit
    Left = 8
    Top = 104
    Width = 337
    Height = 21
    EditLabel.Width = 75
    EditLabel.Height = 13
    EditLabel.Caption = #1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1103
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 2
  end
  object KeyEdit: TLabeledEdit
    Left = 8
    Top = 144
    Width = 121
    Height = 21
    EditLabel.Width = 99
    EditLabel.Height = 13
    EditLabel.Caption = #1050#1086#1076' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 3
  end
  object SHortNameEdit: TLabeledEdit
    Left = 144
    Top = 144
    Width = 121
    Height = 21
    EditLabel.Width = 64
    EditLabel.Height = 13
    EditLabel.Caption = #1057#1086#1082#1088#1072#1097#1077#1085#1080#1077
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 4
  end
  object OkBtn: TButton
    Left = 104
    Top = 179
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 5
  end
  object CancelBtn: TButton
    Left = 184
    Top = 179
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 6
  end
end
