unit man_mainform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls,
  ToolWin;

type
  TMainForm = class(TForm)
    MainMenu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PageControl: TPageControl;
    SubjectsSheet: TTabSheet;
    SchoolsSheet: TTabSheet;
    DepartmentsSheet: TTabSheet;
    WorkersSheet: TTabSheet;
    SubjectSource: TDataSource;
    SubjectsGrid: TDBGrid;
    Connection: TADOConnection;
    SubjectQuery: TADOQuery;
    SchoolQuery: TADOQuery;
    DepartmentQuery: TADOQuery;
    SpecialityQuery: TADOQuery;
    WorkerQuery: TADOQuery;
    SchoolSource: TDataSource;
    DepartmentSource: TDataSource;
    WorkerSource: TDataSource;
    Command: TADOCommand;
    SpecialitySource: TDataSource;
    SubjAddBtn: TButton;
    SubjEditBtn: TButton;
    SubjDelBtn: TButton;
    SchoolsGrid: TDBGrid;
    WorkerGrid: TDBGrid;
    DepGroupBox: TGroupBox;
    DepartmentGrid: TDBGrid;
    SpecGroupBox: TGroupBox;
    SpecialityGrid: TDBGrid;
    DepAddBtn: TButton;
    DepEditBtn: TButton;
    DepDelBtn: TButton;
    SpecAddBtn: TButton;
    SpecEditBtn: TButton;
    SpecDelBtn: TButton;
    WorkerAddBtn: TButton;
    WorkerEditBtn: TButton;
    WorkerDelBtn: TButton;
    SchoolAddBtn: TButton;
    SchoolEditBtn: TButton;
    SchoolDelBtn: TButton;
    TabSheet1: TTabSheet;
    PlaceGrid: TDBGrid;
    PlaceAddBtn: TButton;
    PlaceEditBtn: TButton;
    PlaceDelBtn: TButton;
    PlaceQuery: TADOQuery;
    PlaceSource: TDataSource;
    TabSheet2: TTabSheet;
    CheckQuery: TADOQuery;
    CheckDataSource: TDataSource;
    GroupBox1: TGroupBox;
    CheckGrid: TDBGrid;
    StSearchTabSheet: TTabSheet;
    StSearchDataSource: TDataSource;
    StSearchQuery: TADOQuery;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    FilterGroupBox: TGroupBox;
    Label1: TLabel;
    FNameEdit: TEdit;
    FNameCheckBox: TCheckBox;
    MNameCheckBox: TCheckBox;
    MNameEdit: TEdit;
    LNameCheckBox: TCheckBox;
    LNameEdit: TEdit;
    N3: TMenuItem;
    UpdateItem: TMenuItem;
    Splitter1: TSplitter;
    WFilterCheckBox: TCheckBox;
    WFNameEdit: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure SubjAddBtnClick(Sender: TObject);
    procedure SubjEditBtnClick(Sender: TObject);
    procedure SubjDelBtnClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DepAddBtnClick(Sender: TObject);
    procedure DepEditBtnClick(Sender: TObject);
    procedure DepDelBtnClick(Sender: TObject);
    procedure SpecAddBtnClick(Sender: TObject);
    procedure SpecEditBtnClick(Sender: TObject);
    procedure SpecDelBtnClick(Sender: TObject);
    procedure DepartmentSourceDataChange(Sender: TObject; Field: TField);
    procedure SchoolAddBtnClick(Sender: TObject);
    procedure SchoolEditBtnClick(Sender: TObject);
    procedure SchoolDelBtnClick(Sender: TObject);
    procedure WorkerAddBtnClick(Sender: TObject);
    procedure WorkerEditBtnClick(Sender: TObject);
    procedure WorkerDelBtnClick(Sender: TObject);
    procedure SchoolSourceDataChange(Sender: TObject; Field: TField);
    procedure SubjectSourceDataChange(Sender: TObject; Field: TField);
    procedure WorkerSourceDataChange(Sender: TObject; Field: TField);
    procedure SpecialitySourceDataChange(Sender: TObject; Field: TField);
    procedure PlaceSourceDataChange(Sender: TObject; Field: TField);
    procedure PlaceAddBtnClick(Sender: TObject);
    procedure PlaceEditBtnClick(Sender: TObject);
    procedure PlaceDelBtnClick(Sender: TObject);
    procedure FilterRecords(Sender: TObject);
    procedure UpdateItemClick(Sender: TObject);
    procedure WFilterCheckBoxClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
//  TMyExpression : string;
    { Private declarations }
  public
//  property MyExpr: string read TMyExpression;
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses kern, man_subjectform, man_schoolform, man_departmentform,
  man_workerform, man_specialityform, dep_studentform;

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
try
Connection.ConnectionString := 'FILE NAME='+
  ExtractFilePath(Application.ExeName)+'connection.udl';
Connection.Open;
if SubjectQuery.Active then
  SubjectQuery.Close;
SubjectQuery.SQL.Clear;
SubjectQuery.SQL.Add('SELECT * FROM Subjects, SbTypes WHERE (sb_sbtcode = sbt_pcode) ORDER BY sb_Name');
SubjectQuery.Open;
if SchoolQuery.Active then
  SchoolQuery.Close;
SchoolQuery.SQL.Clear;
SchoolQuery.SQL.Add('SELECT * FROM Schools ORDER BY sc_Name');
SchoolQuery.Open;
if DepartmentQuery.Active then
  DepartmentQuery.Close;
DepartmentQuery.SQL.Clear;
DepartmentQuery.SQL.Add(
  'SELECT * FROM Departments, Workers WHERE (dp_mastercode *= wk_pcode) ORDER BY dp_Name');
DepartmentQuery.Open;
if WorkerQuery.Active then
  WorkerQuery.Close;
WorkerQuery.SQL.Clear;
WorkerQuery.SQL.Add('SELECT * FROM Workers ORDER BY wk_Name');
WorkerQuery.Open;
if PlaceQuery.Active then
  PlaceQuery.Close;
PlaceQuery.SQL.Clear;
PlaceQuery.SQL.Add('SELECT * FROM Places ORDER BY pl_Name');
PlaceQuery.Open;
if CheckQuery.Active then
  CheckQuery.Close;
CheckQuery.SQL.Clear;
CheckQuery.SQL.Add('SELECT sm_WeekWork, sm_Number, gr_Name');
CheckQuery.SQL.Add('FROM Semesters, Groups');
CheckQuery.SQL.Add('WHERE (sm_grcode = gr_pcode) AND (gr_Attributes = 0)');
CheckQuery.SQL.Add('AND ((sm_WeekWork < 30) OR (sm_WeekWork > 40))');
CheckQuery.SQL.Add('ORDER BY gr_Name;');
CheckQuery.Open;
if StSearchQuery.Active then
  StSearchQuery.Close;
StSearchQuery.SQL.Add('SELECT st_pcode, gr_Name, st_FName, st_MName, st_LName, st_BirthDate,');
StSearchQuery.SQL.Add('(pl_FullName+'', ''+st_Address) AS st_Address FROM Students, Groups, Places');
StSearchQuery.SQL.Add('WHERE (st_grcode = gr_pcode) AND (pl_pcode = st_plcode)');
StSearchQuery.Open;

except
  begin
  MessageDlg('Ошибка иннициализации приложения!', mtError, [mbOk], 0);
  Application.Terminate;
  end;
end;
end;

procedure TMainForm.SubjAddBtnClick(Sender: TObject);
var
form     : TSubjectForm;
sbname   : string;
tmpquery : TADOQuery;
x        : integer;

begin
form := TSubjectForm.Create(self);
form.KindComboBox.Items.Clear;
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Add('SELECT * FROM SbTypes ORDER BY sbt_pcode');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  for x := 1 to tmpquery.RecordCount do
    begin
    tmpquery.RecNo := x;
    form.KindComboBox.Items.Add(tmpquery.FieldByName('sbt_Type').AsString);
    end;
tmpquery.Free;
form.KindComboBox.Visible := true;
form.KindComboBox.Enabled := true;
form.Label1.Visible := true;
form.Label1.Enabled := true;
if (form.ShowModal = mrOk) then
  begin
  sbname := Trim(form.SubjectEdit.Text);
  if sbname <> '' then
    begin
    Command.CommandText := 'INSERT INTO Subjects(sb_Name, sb_sbtcode) Values('''+
    sbname+''', '+IntToStr(form.KindComboBox.ItemIndex+1)+')';
    Command.Execute;
    SubjectQuery.Requery;
    end;
  end;
form.Free;
end;

procedure TMainForm.SubjEditBtnClick(Sender: TObject);
var
sbname   : string;
form     : TSubjectForm;
tmpquery : TADOQuery;
x        : integer;

begin
form := TSubjectForm.Create(self);
form.KindComboBox.Items.Clear;
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Add('SELECT * FROM SbTypes ORDER BY sbt_pcode');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  for x := 1 to tmpquery.RecordCount do
    begin
    tmpquery.RecNo := x;
    form.KindComboBox.Items.Add(tmpquery.FieldByName('sbt_Type').AsString);
    end;
tmpquery.Free;
form.KindComboBox.ItemIndex := SubjectQuery.FieldByName('sb_sbtcode').AsInteger-1;
form.SubjectEdit.Text := SubjectQuery.FieldByName('sb_Name').AsString;
form.KindComboBox.Visible := true;
form.KindComboBox.Enabled := true;
form.Label1.Visible := true;
form.Label1.Enabled := true;
if form.ShowModal = mrOk then
  begin
  sbname := Trim(form.SubjectEdit.Text);
  if sbname <> '' then
    begin
    Command.CommandText := 'UPDATE Subjects SET sb_Name = '''+sbname+
      ''', sb_sbtcode = '+IntToStr(form.KindComboBox.ItemIndex+1)+
      ' WHERE (sb_pcode = '''+SubjectQuery.FieldByName('sb_pcode').AsString+''')';
    Command.Execute;
    SubjectQuery.Requery;
    end;
  end;
form.Free;
end;

procedure TMainForm.SubjDelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
  Command.CommandText := 'DELETE FROM Subjects WHERE (sb_pcode = '''+
    SubjectQuery.FieldByName('sb_pcode').AsString+''')';
  Command.Execute;
  SubjectQuery.Requery;
  end;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TMainForm.DepAddBtnClick(Sender: TObject);
var
form   : TDepartmentForm;
begin
DepartmentQuery.Append;
form := TDepartmentForm.Create(self);
if form.ShowModal = mrOk then
  DepartmentQuery.Post else
  DepartmentQuery.Cancel;
form.Free;
end;

procedure TMainForm.DepEditBtnClick(Sender: TObject);
var
form   : TDepartmentForm;
begin
DepartmentQuery.Edit;
form := TDepartmentForm.Create(self);
if form.ShowModal = mrOk then
  DepartmentQuery.Post else
  DepartmentQuery.Cancel;
form.Free;
end;

procedure TMainForm.DepDelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
  Command.CommandText := 'DELETE FROM Departments WHERE (dp_pcode = '''+
    DepartmentQuery.FieldByName('dp_pcode').AsString+''')';
  Command.Execute;
  DepartmentQuery.Requery;
  end;
end;

procedure TMainForm.SpecAddBtnClick(Sender: TObject);
var
form : TSpecialityForm;
begin
form := TSpecialityForm.Create(self);
if form.ShowModal = mrOk then
  begin
  Command.CommandText :=
    'INSERT INTO Specialities(sp_Name, sp_Key, sp_Specialization, sp_Kvalification, sp_ShortName, sp_depcode) VALUES('''+
    form.NameEdit.Text+''', '''+form.KeyEdit.Text+''', '''+form.SpecializationEdit.Text+
    ''', '''+form.KvalificationEdit.Text+''', '''+form.SHortNameEdit.Text+
    ''', '''+DepartmentQuery.FieldByName('dp_pcode').AsString+''')';
  Command.Execute;
  SpecialityQuery.Requery;
  end;
form.Free;
end;

procedure TMainForm.SpecEditBtnClick(Sender: TObject);
var
form : TSpecialityForm;
begin
form := TSpecialityForm.Create(self);
form.NameEdit.Text := SpecialityQuery.FieldByName('sp_Name').AsString;
form.SHortNameEdit.Text := SpecialityQuery.FieldByName('sp_ShortName').AsString;
form.KeyEdit.Text := SpecialityQuery.FieldByName('sp_Key').AsString;
form.SpecializationEdit.Text := SpecialityQuery.FieldByName('sp_Specialization').AsString;
form.KvalificationEdit.Text := SpecialityQuery.FieldByName('sp_Kvalification').AsString;
if form.ShowModal = mrOk then
  begin
  Command.CommandText :=
    'UPDATE Specialities SET sp_Name = '''+form.NameEdit.Text+
    ''', sp_Key = '''+form.KeyEdit.Text+
    ''', sp_Specialization = '''+form.SpecializationEdit.Text+
    ''', sp_Kvalification = '''+form.KvalificationEdit.Text+
    ''', sp_ShortName = '''+form.SHortNameEdit.Text+
    ''' WHERE (sp_pcode = '''+SpecialityQuery.FieldByName('sp_pcode').AsString+''');';
  Command.Execute;
  SpecialityQuery.Requery;
  end;
form.Free;
end;

procedure TMainForm.SpecDelBtnClick(Sender: TObject);
begin
NotYet;
end;

procedure TMainForm.DepartmentSourceDataChange(Sender: TObject;
  Field: TField);
begin
SpecialityQuery.Close;
DepEditBtn.Enabled := false;
DepDelBtn.Enabled := false;
SpecGroupBox.Enabled := false;
if (DepartmentQuery.State = dsBrowse) and (DepartmentQuery.RecNo > 0) then
  begin
  DepEditBtn.Enabled := true;
  DepDelBtn.Enabled := true;
  SpecGroupBox.Enabled := true;
  SpecialityQuery.SQL.Clear;
  SpecialityQuery.SQL.Add('SELECT * FROM Specialities WHERE (sp_depcode = '''+
    DepartmentQuery.FieldByName('dp_pcode').AsString+''') ORDER BY sp_Name');
  SpecialityQuery.Open;
  end;
end;

procedure TMainForm.SchoolAddBtnClick(Sender: TObject);
var
form        : TSchoolForm;

begin
form := TSchoolForm.Create(self);
if form.ShowModal = mrOk then
  begin
  Command.CommandText := 'INSERT INTO Schools(sc_Name, sc_RName, sc_MinistryName, sc_Place) Values('''+
    form.NameEdit.Text+''', '''+
    form.RNameEdit.Text+''', '''+
    form.MinistryEdit.Text+''', '''+
    form.PlaceEdit.Text+''')';
  Command.Execute;
  SchoolQuery.Requery;
  end;
form.Free;
end;

procedure TMainForm.SchoolEditBtnClick(Sender: TObject);
var
form        : TSchoolForm;

begin
form := TSchoolForm.Create(self);
form.NameEdit.Text := SchoolQuery.FieldByName('sc_Name').AsString;
form.MinistryEdit.Text := SchoolQuery.FieldByName('sc_MinistryName').AsString;
form.RNameEdit.Text := SchoolQuery.FieldByName('sc_RName').AsString;
form.PlaceEdit.Text := SchoolQuery.FieldByName('sc_Place').AsString;
if form.ShowModal = mrOk then
  begin
  Command.CommandText := 'UPDATE Schools SET sc_Name = '''+
  form.NameEdit.Text+
  ''', sc_RName = '''+
  form.RNameEdit.Text+
  ''', sc_MinistryName = '''+
  form.MinistryEdit.Text+
  ''', sc_Place = '''+
  form.PlaceEdit.Text+
  ''' WHERE (sc_pcode = '''+SchoolQuery.FieldByName('sc_pcode').AsString+''');';
  Command.Execute;
  SchoolQuery.Requery;
  end;
form.Free;
end;

procedure TMainForm.SchoolDelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
  Command.CommandText := 'DELETE FROM Schools WHERE (sc_pcode = '''+
    SchoolQuery.FieldByName('sc_pcode').AsString+''')';
  Command.Execute;
  SchoolQuery.Requery;
  end;
end;

procedure TMainForm.WorkerAddBtnClick(Sender: TObject);
var
form    : TWorkerForm;

begin
form := TWorkerForm.Create(self);
if form.ShowModal = mrOk then
  begin
  Command.CommandText := 'INSERT INTO Workers(wk_FName, wk_MName, wk_LName, wk_BirthDate) VALUES('''+
    form.FNameEdit.Text+''', '''+form.MNameEdit.Text+''', '''+form.LNameEdit.Text+''', '''+
    DateToStr(form.BDateEdit.Date)+''');';
  Command.Execute;
  WorkerQuery.Requery;
  end;
form.Free;
end;

procedure TMainForm.WorkerEditBtnClick(Sender: TObject);
var
form    : TWorkerForm;

begin
form := TWorkerForm.Create(self);
form.FNameEdit.Text := WorkerQuery.FieldByName('wk_FName').AsString;
form.MNameEdit.Text := WorkerQuery.FieldByName('wk_MName').AsString;
form.LNameEdit.Text := WorkerQuery.FieldByName('wk_LName').AsString;
form.BDateEdit.Date := WorkerQuery.FieldByName('wk_BirthDate').AsDateTime;
if form.ShowModal = mrOk then
  begin
  Command.CommandText := 'UPDATE Workers SET wk_FName = '''+
  form.FNameEdit.Text+
  ''', wk_MName = '''+
  form.MNameEdit.Text+
  ''', wk_LName = '''+form.LNameEdit.Text+
  ''', wk_BirthDate = '''+DateToStr(form.BDateEdit.Date)+
  ''' WHERE (wk_pcode = '''+WorkerQuery.FieldByname('wk_pcode').AsString+''')';
  Command.Execute;
  WorkerQuery.Requery;
  end;
form.Free;
end;

procedure TMainForm.WorkerDelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
  Command.CommandText := 'DELETE FROM Workers WHERE (wk_pcode = '''+
    WorkerQuery.FieldByName('wk_pcode').AsString+''')';
  Command.Execute;
  WorkerQuery.Requery;
  end;
end;

procedure TMainForm.SchoolSourceDataChange(Sender: TObject; Field: TField);
var
can : boolean;
begin
can := (SchoolQuery.State = dsBrowse) and (SchoolQuery.RecNo > 0);
SchoolDelBtn.Enabled := can;
SchoolEditBtn.Enabled := can;
end;

procedure TMainForm.SubjectSourceDataChange(Sender: TObject;
  Field: TField);
var
can : boolean;
begin
can := (SubjectQuery.State = dsBrowse) and (subjectQuery.RecNo > 0);
SubjEditBtn.Enabled := can;
SubjDelBtn.Enabled := can;
end;

procedure TMainForm.WorkerSourceDataChange(Sender: TObject; Field: TField);
var
can   : boolean;

begin
can := (WorkerQuery.State = dsBrowse) and (WorkerQuery.RecNo > 0);
WorkerEditBtn.Enabled := can;
WorkerDelBtn.Enabled := can;
end;

procedure TMainForm.SpecialitySourceDataChange(Sender: TObject;
  Field: TField);
var
can   : boolean;

begin
can := (SpecialityQuery.State = dsBrowse) and (SpecialityQuery.RecNo > 0);
SpecEditBtn.Enabled := can;
SpecDelBtn.Enabled := can;
end;

procedure TMainForm.PlaceSourceDataChange(Sender: TObject; Field: TField);
var
can    : boolean;

begin
can := (PlaceQuery.State = dsBrowse) and (PlaceQuery.RecNo > 0);
PlaceEditBtn.Enabled := can;
PlaceDelBtn.Enabled := can;
end;

procedure TMainForm.PlaceAddBtnClick(Sender: TObject);
var
plname   : string;
form     : TSubjectForm;
plprefix : string;
plkind   : integer;
tmpquery : TADOQuery;

begin
form := TSubjectForm.Create(self);
form.Label1.Visible := true;
form.Label1.Enabled := true;
form.KindComboBox.Visible := true;
form.KindComboBox.Enabled := true;
form.Caption := 'Населенный пункт';
if (form.ShowModal = mrOk) then
  begin
  plname := Trim(form.SubjectEdit.Text);
  plkind := form.KindComboBox.ItemIndex+1;
  plprefix := '';
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := Connection;
  tmpquery.SQL.Add('SELECT * FROM PlaceKinds WHERE plk_pcode = '+
      IntToStr(plkind));
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    plprefix := tmpquery.FieldByName('plk_ShortName').AsString;
  tmpquery.Free;
  if plname <> '' then
    begin
    Command.CommandText := 'INSERT INTO Places(pl_Name, pl_kind, pl_prefix) Values('''+
    plname+''', '+IntToStr(plkind)+
    ', '''+plprefix+''')';
    ShowMessage(Command.CommandText);
    Command.Execute;
    PlaceQuery.Requery;
    end;
  end;
form.Free;
end;

procedure TMainForm.PlaceEditBtnClick(Sender: TObject);
var
plname   : string;
form     : TSubjectForm;
plprefix : string;
plkind   : integer;
tmpquery : TADOQuery;

begin
form := TSubjectForm.Create(self);
form.Label1.Visible := true;
form.Label1.Enabled := true;
form.KindComboBox.Visible := true;
form.KindComboBox.Enabled := true;
form.Caption := 'Населенный пункт';
form.SubjectEdit.Text := PlaceQuery.FieldByName('pl_Name').AsString;
form.KindComboBox.ItemIndex := PlaceQuery.FieldByName('pl_kind').AsInteger-1;
if form.ShowModal = mrOk then
  begin
  plname := Trim(form.SubjectEdit.Text);
//  plkind := 0;
  plkind := form.KindComboBox.ItemIndex + 1;
  plprefix := '';
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := Connection;
  tmpquery.SQL.Add('SELECT * FROM PlaceKinds WHERE plk_pcode = '+
      IntToStr(plkind));
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    plprefix := tmpquery.FieldByName('plk_ShortName').AsString;
  tmpquery.Free;
  if plname <> '' then
    begin
    Command.CommandText := 'UPDATE Places SET pl_Name = '''+plname+
      ''', pl_kind = '+IntToStr(plkind)+', pl_prefix = '''+
      plprefix+''' WHERE (pl_pcode = '''+PlaceQuery.FieldByName('pl_pcode').AsString+''')';
    Command.Execute;
    PlaceQuery.Requery;
    end;
  end;
form.Free;
end;

procedure TMainForm.PlaceDelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
  Command.CommandText := 'DELETE FROM Places WHERE (pl_pcode = '''+
    PlaceQuery.FieldByName('pl_pcode').AsString+''')';
  Command.Execute;
  PlaceQuery.Requery;
  end;
end;


procedure TMainForm.FilterRecords(Sender: TObject);
var
//count    : integer;
fstr     : string;
//tmpstr   : string;
//tmpquery : TADOQuery;

begin
StSearchQuery.Filtered := false;
fstr := '';
if (FNameCheckBox.Checked) and (trim(FNameEdit.Text) <> '') then
  // filter FName
  fstr := '(st_FName LIKE '''+FNameEdit.Text+'%'')'
  else FNameEdit.Text := '';
if (MNameCheckBox.Checked) and (trim(MNameEdit.Text) <> '') then
  begin
    if (fstr <> '') then
      fstr := fstr + ' AND (st_MName LIKE '''+MNAmeEdit.Text+'%'')' else
      fstr := '(st_MName LIKE '''+MNAmeEdit.Text+'%'')';
  end else
  MNameEdit.Text := '';
if (LNameCheckBox.Checked) and (trim(LNameEdit.Text) <> '') then
  begin
    if (fstr <> '') then
      fstr := fstr + ' AND (st_MName LIKE '''+LNAmeEdit.Text+'%'')' else
      fstr := '(st_MName LIKE '''+LNAmeEdit.Text+'%'')';
  end else
  LNameEdit.Text := '';
if fstr <> '' then
  begin
  StSearchQuery.Filter := fstr;
  StSearchQuery.Filtered := true;
  end;
end;

procedure TMainForm.UpdateItemClick(Sender: TObject);
var
updater : string;
lfile   : extended;
rfile   : extended;

begin
lfile := FileInfo(Application.ExeName);
rfile := FileInfo(MAN_REPO);
if (rfile > lfile) then
  begin
  updater := ExtractFilePath(Application.ExeName)+UPD_FILE;
  if (FileExists(updater)) then
    begin
    if (MessageDlg('Обновить программу до более новой версии?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes) then
      begin
      winexec(PChar(updater), SW_SHOWNORMAL);
      Application.Terminate;
      end;
    end
  else
    MessageDlg('Отсутствует утилита обновления '+updater+'!', mtError, [mbOk], 0);
  end
else if (rfile < lfile) then
  begin
  if (MessageDlg('Обновить программу в репозитории до более новой версии?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes) then
    begin
    if CopyFile(PChar(Application.ExeName),PChar(MAN_REPO), false) then
      MessageDlg('Обновление завершено успешно!', mtInformation, [mbOk], 0)
    else
      MessageDlg('Не удалось обновить репозиторий!', mtError, [mbOk], 0);
    end;
  end
else
  begin
    MessageDlg('Программа не нуждается в обновлении!', mtInformation, [mbOk], 0)
  end;
end;


procedure TMainForm.WFilterCheckBoxClick(Sender: TObject);
begin
WorkerQuery.Filtered := false;
if (WFilterCheckBox.Checked and (Trim(WFnameEdit.Text) <> '')) then
  begin
  WorkerQuery.Filter := 'wk_FName LIKE '''+WFNameEdit.Text+'%''';
//  ShowMessage(WorkerQuery.Filter);
  WorkerQuery.Filtered := true;
  end;
end;

procedure TMainForm.DBGrid1DblClick(Sender: TObject);
var
form : TStudentForm;
x    : integer;

begin
if StSearchQuery.RecNo > 0 then
  begin
  form := TStudentForm.Create(self);
  form.StudentQuery.SQL.Clear;
  form.StudentQuery.SQL.Add('SELECT * FROM Students WHERE (st_pcode ='''+
    StSearchQuery.FieldByName('st_pcode').AsString+''')');
  form.StudentQuery.Open;
//  form.PersonalSheet.Enabled := false;
//  form.ParentsSheet.Enabled := false;
//  form.DiplomeSheet.Enabled := false;
//  form.DocumSheet.Enabled := false;
  for x := 0 to form.PageControl.PageCount -1 do
    form.PageControl.Pages[x].Enabled := false;
  form.SHowModal;
  form.Free;
  end;
end;

end.
