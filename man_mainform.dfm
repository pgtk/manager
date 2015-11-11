object MainForm: TMainForm
  Left = 378
  Top = 296
  Width = 846
  Height = 420
  Caption = #1052#1086#1076#1091#1083#1100' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 838
    Height = 374
    ActivePage = SubjectsSheet
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    object SubjectsSheet: TTabSheet
      Caption = #1055#1088#1077#1076#1084#1077#1090#1099
      DesignSize = (
        830
        346)
      object SubjectsGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 830
        Height = 312
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = SubjectSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'sbt_ShortType'
            Title.Caption = #1064#1080#1092#1088
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sb_Name'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 795
            Visible = True
          end>
      end
      object SubjAddBtn: TButton
        Left = 0
        Top = 319
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = SubjAddBtnClick
      end
      object SubjEditBtn: TButton
        Left = 77
        Top = 319
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 2
        OnClick = SubjEditBtnClick
      end
      object SubjDelBtn: TButton
        Left = 168
        Top = 319
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = SubjDelBtnClick
      end
    end
    object SchoolsSheet: TTabSheet
      Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1090#1077#1083#1100#1085#1099#1077' '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103
      ImageIndex = 1
      DesignSize = (
        830
        346)
      object SchoolsGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 830
        Height = 312
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = SchoolSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'sc_Name'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 353
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sc_MinistryName'
            Title.Caption = #1052#1080#1085#1080#1089#1090#1077#1088#1089#1090#1074#1086
            Width = 258
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sc_Place'
            Title.Caption = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090
            Width = 186
            Visible = True
          end>
      end
      object SchoolAddBtn: TButton
        Left = 0
        Top = 319
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = SchoolAddBtnClick
      end
      object SchoolEditBtn: TButton
        Left = 77
        Top = 319
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 2
        OnClick = SchoolEditBtnClick
      end
      object SchoolDelBtn: TButton
        Left = 168
        Top = 319
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = SchoolDelBtnClick
      end
    end
    object DepartmentsSheet: TTabSheet
      Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1103' '#1080' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      ImageIndex = 2
      object Splitter1: TSplitter
        Left = 0
        Top = 163
        Width = 830
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object DepGroupBox: TGroupBox
        Left = 0
        Top = 0
        Width = 830
        Height = 163
        Align = alTop
        Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1103
        TabOrder = 0
        DesignSize = (
          830
          163)
        object DepartmentGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 826
          Height = 114
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DepartmentSource
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'dp_Name'
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 556
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'wk_Name'
              Title.Caption = #1047#1072#1074'. '#1054#1090#1076#1077#1083#1077#1085#1080#1077#1084
              Width = 236
              Visible = True
            end>
        end
        object DepAddBtn: TButton
          Left = 6
          Top = 131
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 1
          OnClick = DepAddBtnClick
        end
        object DepEditBtn: TButton
          Left = 81
          Top = 131
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 2
          OnClick = DepEditBtnClick
        end
        object DepDelBtn: TButton
          Left = 192
          Top = 131
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 3
          OnClick = DepDelBtnClick
        end
      end
      object SpecGroupBox: TGroupBox
        Left = 0
        Top = 166
        Width = 830
        Height = 180
        Align = alClient
        Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
        TabOrder = 1
        DesignSize = (
          830
          180)
        object SpecialityGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 826
          Height = 136
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = SpecialitySource
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'sp_Key'
              Title.Caption = #1050#1086#1076
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sp_Name'
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 727
              Visible = True
            end>
        end
        object SpecAddBtn: TButton
          Left = 6
          Top = 153
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 1
          OnClick = SpecAddBtnClick
        end
        object SpecEditBtn: TButton
          Left = 81
          Top = 153
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 2
          OnClick = SpecEditBtnClick
        end
        object SpecDelBtn: TButton
          Left = 192
          Top = 153
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 3
          OnClick = SpecDelBtnClick
        end
      end
    end
    object WorkersSheet: TTabSheet
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
      ImageIndex = 3
      DesignSize = (
        830
        346)
      object WorkerGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 830
        Height = 312
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = WorkerSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'wk_Name'
            Title.Caption = #1060' '#1048' '#1054
            Width = 793
            Visible = True
          end>
      end
      object WorkerAddBtn: TButton
        Left = 0
        Top = 319
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = WorkerAddBtnClick
      end
      object WorkerEditBtn: TButton
        Left = 77
        Top = 319
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 2
        OnClick = WorkerEditBtnClick
      end
      object WorkerDelBtn: TButton
        Left = 168
        Top = 319
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = WorkerDelBtnClick
      end
      object WFilterCheckBox: TCheckBox
        Left = 270
        Top = 320
        Width = 75
        Height = 16
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1060#1072#1084#1080#1083#1080#1103
        TabOrder = 4
        OnClick = WFilterCheckBoxClick
      end
      object WFNameEdit: TEdit
        Left = 345
        Top = 318
        Width = 224
        Height = 20
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 5
        OnChange = WFilterCheckBoxClick
      end
    end
    object TabSheet1: TTabSheet
      Caption = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1077' '#1087#1091#1085#1082#1090#1099
      ImageIndex = 4
      DesignSize = (
        830
        346)
      object PlaceGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 830
        Height = 312
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = PlaceSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'pl_FullName'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 791
            Visible = True
          end>
      end
      object PlaceAddBtn: TButton
        Left = 0
        Top = 319
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = PlaceAddBtnClick
      end
      object PlaceEditBtn: TButton
        Left = 77
        Top = 319
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 2
        OnClick = PlaceEditBtnClick
      end
      object PlaceDelBtn: TButton
        Left = 168
        Top = 319
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = PlaceDelBtnClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1088#1086#1074#1077#1088#1082#1080
      ImageIndex = 5
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 281
        Height = 347
        Align = alLeft
        Caption = #1055#1086#1076#1086#1079#1088#1080#1090#1077#1083#1100#1085#1072#1103' '#1085#1077#1076#1077#1083#1100#1085#1072#1103' '#1085#1072#1075#1088#1091#1079#1082#1072
        TabOrder = 0
        object CheckGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 277
          Height = 330
          Align = alClient
          DataSource = CheckDataSource
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'gr_Name'
              Title.Caption = #1043#1088#1091#1087#1087#1072
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sm_Number'
              Title.Caption = #1057#1077#1084#1077#1089#1090#1088
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sm_WeekWork'
              Title.Caption = #1053#1072#1075#1088#1091#1079#1082#1072
              Width = 80
              Visible = True
            end>
        end
      end
    end
    object StSearchTabSheet: TTabSheet
      Caption = #1055#1086#1080#1089#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
      ImageIndex = 6
      object DBGrid1: TDBGrid
        Left = 0
        Top = 72
        Width = 830
        Height = 274
        Align = alClient
        DataSource = StSearchDataSource
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'gr_Name'
            Title.Caption = #1043#1088#1091#1087#1087#1072
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_FName'
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_MName'
            Title.Caption = #1048#1084#1103
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_LName'
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_BirthDate'
            Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_Address'
            Title.Caption = #1040#1076#1088#1077#1089
            Visible = True
          end>
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 830
        Height = 72
        ButtonHeight = 64
        Caption = 'ToolBar1'
        TabOrder = 1
        object FilterGroupBox: TGroupBox
          Left = 0
          Top = 2
          Width = 831
          Height = 64
          Align = alClient
          Caption = #1060#1080#1083#1100#1090#1088
          TabOrder = 0
          object Label1: TLabel
            Left = 8
            Top = 16
            Width = 3
            Height = 13
          end
          object FNameEdit: TEdit
            Left = 8
            Top = 37
            Width = 142
            Height = 21
            TabOrder = 0
            OnChange = FilterRecords
          end
          object FNameCheckBox: TCheckBox
            Left = 8
            Top = 16
            Width = 97
            Height = 17
            Caption = #1060#1072#1084#1080#1083#1080#1103
            TabOrder = 1
            OnClick = FilterRecords
          end
          object MNameCheckBox: TCheckBox
            Left = 153
            Top = 16
            Width = 97
            Height = 17
            Caption = #1048#1084#1103
            TabOrder = 2
            OnClick = FilterRecords
          end
          object MNameEdit: TEdit
            Left = 153
            Top = 37
            Width = 137
            Height = 21
            TabOrder = 3
            OnChange = FilterRecords
          end
          object LNameCheckBox: TCheckBox
            Left = 292
            Top = 18
            Width = 97
            Height = 17
            Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            TabOrder = 4
            OnClick = FilterRecords
          end
          object LNameEdit: TEdit
            Left = 292
            Top = 37
            Width = 142
            Height = 21
            TabOrder = 5
            OnChange = FilterRecords
          end
        end
      end
    end
  end
  object MainMenu: TMainMenu
    Left = 144
    Top = 112
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N2Click
      end
    end
    object N3: TMenuItem
      Caption = #1057#1077#1088#1074#1080#1089
      object UpdateItem: TMenuItem
        Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
        OnClick = UpdateItemClick
      end
    end
  end
  object SubjectSource: TDataSource
    DataSet = SubjectQuery
    OnDataChange = SubjectSourceDataChange
    Left = 8
    Top = 144
  end
  object Connection: TADOConnection
    ConnectionString = 'FILE NAME=C:\Delphi\PGTK\manager\connection.udl'
    Provider = 'SQLOLEDB.1'
    Left = 8
    Top = 112
  end
  object SubjectQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Subjects, SbTypes;')
    Left = 40
    Top = 144
  end
  object SchoolQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Schools;')
    Left = 40
    Top = 208
  end
  object DepartmentQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM Departments, Workers WHERE (dp_mastercode *= wk_pc' +
        'ode);')
    Left = 40
    Top = 240
  end
  object SpecialityQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Specialities;')
    Left = 104
    Top = 240
  end
  object WorkerQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Workers;')
    Left = 40
    Top = 288
  end
  object SchoolSource: TDataSource
    DataSet = SchoolQuery
    OnDataChange = SchoolSourceDataChange
    Left = 8
    Top = 208
  end
  object DepartmentSource: TDataSource
    DataSet = DepartmentQuery
    OnDataChange = DepartmentSourceDataChange
    Left = 8
    Top = 240
  end
  object WorkerSource: TDataSource
    DataSet = WorkerQuery
    OnDataChange = WorkerSourceDataChange
    Left = 8
    Top = 288
  end
  object Command: TADOCommand
    Connection = Connection
    Parameters = <>
    Left = 40
    Top = 112
  end
  object SpecialitySource: TDataSource
    DataSet = SpecialityQuery
    OnDataChange = SpecialitySourceDataChange
    Left = 72
    Top = 240
  end
  object PlaceQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Places;')
    Left = 208
    Top = 288
  end
  object PlaceSource: TDataSource
    DataSet = PlaceQuery
    OnDataChange = PlaceSourceDataChange
    Left = 176
    Top = 288
  end
  object CheckQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT sm_WeekWork, sm_Number, gr_Name'
      'FROM Semesters, Groups'
      'WHERE (sm_grcode = gr_pcode) AND (gr_Attributes = 0) '
      'ORDER BY gr_Name;')
    Left = 664
    Top = 120
  end
  object CheckDataSource: TDataSource
    DataSet = CheckQuery
    Left = 632
    Top = 120
  end
  object StSearchDataSource: TDataSource
    DataSet = StSearchQuery
    Left = 440
    Top = 160
  end
  object StSearchQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT gr_Name, st_FName, st_MName, st_LName, st_BirthDate, st_p' +
        'code, '
      
        '(pl_FullName+'#39', '#39'+st_Address) AS st_Address FROM Students, Group' +
        's, Places'
      'WHERE (st_grcode = gr_pcode) AND (pl_pcode = st_plcode)')
    Left = 472
    Top = 160
  end
end
