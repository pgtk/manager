object WorkerForm: TWorkerForm
  Left = 590
  Top = 112
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
  ClientHeight = 207
  ClientWidth = 281
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
    281
    207)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 142
    Width = 79
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object FNameEdit: TLabeledEdit
    Left = 8
    Top = 25
    Width = 265
    Height = 21
    EditLabel.Width = 49
    EditLabel.Height = 13
    EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 0
  end
  object MNameEdit: TLabeledEdit
    Left = 8
    Top = 65
    Width = 265
    Height = 21
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = #1048#1084#1103
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 1
  end
  object LNameEdit: TLabeledEdit
    Left = 8
    Top = 105
    Width = 265
    Height = 21
    EditLabel.Width = 47
    EditLabel.Height = 13
    EditLabel.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 2
  end
  object OkBtn: TButton
    Left = 64
    Top = 173
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object CancelBtn: TButton
    Left = 144
    Top = 173
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 4
  end
  object BDateEdit: TDateTimePicker
    Left = 128
    Top = 136
    Width = 145
    Height = 21
    CalAlignment = dtaLeft
    Date = 40092.3895006713
    Time = 40092.3895006713
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 5
  end
end
