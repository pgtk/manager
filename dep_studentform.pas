unit dep_studentform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, Spin, DB, ADODB, Grids, DBGrids,
  Mask, ExtCtrls, QrCtrls, Menus;

type
  TStudentForm = class(TForm)
    PageControl: TPageControl;
    OkBtn: TButton;
    CancelBtn: TButton;
    PersonalSheet: TTabSheet;
    ParentsSheet: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PhoneGroupBox: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    AddrGroupBox: TGroupBox;
    Label4: TLabel;
    Label10: TLabel;
    DiplomeSheet: TTabSheet;
    Label11: TLabel;
    DocumSheet: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    InGroupBox: TGroupBox;
    Label15: TLabel;
    Label17: TLabel;
    ParentsQuery: TADOQuery;
    ParentsCommand: TADOCommand;
    ParentsDataSourse: TDataSource;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    PlaceQuery: TADOQuery;
    PlaceDataSource: TDataSource;
    ParentsGroupBox: TGroupBox;
    PAddBtn: TButton;
    PEditBtn: TButton;
    PDelBtn: TButton;
    ParentsGrid: TDBGrid;
    GroupBox1: TGroupBox;
    Label24: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    GroupBox2: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    GroupBox3: TGroupBox;
    PlaceComboBox: TDBLookupComboBox;
    StPhoto: TDBImage;
    IsMaleEdit: TDBComboBox;
    TestsEdit: TDBComboBox;
    HotelCheckBox: TDBCheckBox;
    HomePhoneEdit: TDBEdit;
    CellPhoneEdit: TDBEdit;
    WorkPhoneEdit: TDBEdit;
    AddressEdit: TDBEdit;
    FNameEdit: TDBEdit;
    MNameEdit: TDBEdit;
    LNameEdit: TDBEdit;
    BirthDateEdit: TDBEdit;
    BirthDateLookupBtn: TButton;
    StudNumberEdit: TDBEdit;
    DocumentsEdit: TDBMemo;
    PassptDeptEdit: TDBMemo;
    PassptSeriaEdit: TDBEdit;
    PassptNumEdit: TDBEdit;
    PassptDateEdit: TDBEdit;
    GetDateLookupBtn: TButton;
    PolisNumEdit: TDBEdit;
    PolisSeriaEdit: TDBEdit;
    INNEdit: TDBEdit;
    SocialNumEdit: TDBEdit;
    BankDepEdit: TDBEdit;
    BankNumEdit: TDBEdit;
    DiplGetDateEdit: TDBEdit;
    DiplGetDateLookupBtn: TButton;
    DiplNumEdit: TDBEdit;
    DiplRegNumEdit: TDBEdit;
    ZipCodeEdit: TDBEdit;
    Label35: TLabel;
    IsCommercialCheckBox: TDBCheckBox;
    SchoolComboBox: TDBLookupComboBox;
    SchoolQuery: TADOQuery;
    SchoolDataSource: TDataSource;
    ParentLessEdit: TDBCheckBox;
    StudentQuery: TADOQuery;
    StudentsDataSource: TDataSource;
    InYearEdit: TDBEdit;
    OutYearEdit: TDBEdit;
    GroupBox4: TGroupBox;
    FirstDiplomeFormBtn: TButton;
    SecondDiplomeFormBtn: TButton;
    IsDiplomeCopyCheckBox: TCheckBox;
    DiplomingGroupBox: TGroupBox;
    Label18: TLabel;
    DProjectEdit: TDBEdit;
    Label19: TLabel;
    ExamDateEdit: TDBEdit;
    ExamDateLookupBtn: TButton;
    DMarkEdit: TDBEdit;
    Label23: TLabel;
    GOSGroupBox: TGroupBox;
    Label36: TLabel;
    GOSDateEdit: TDBEdit;
    GOSLookupBtn: TButton;
    Label37: TLabel;
    GOSMarkEdit: TDBEdit;
    Label38: TLabel;
    GOSNameEdit: TDBEdit;
    Label39: TLabel;
    ComissionDateEdit: TDBEdit;
    ComissionDateLookupBtn: TButton;
    Label40: TLabel;
    BeginSchoolComboBox: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    AcademSheet: TTabSheet;
    AcademSource: TDataSource;
    AcademQuery: TADOQuery;
    AcademGrid: TDBGrid;
    AddAcademBtn: TButton;
    EditAcademBtn: TButton;
    DelAcademBtn: TButton;
    PrintAcademBtn: TButton;
    Label41: TLabel;
    LangLookupComboBox: TDBLookupComboBox;
    LangQuery: TADOQuery;
    LangSource: TDataSource;
    DBCheckBox2: TDBCheckBox;
    SprBtn: TButton;
    PhotoPopupMenu: TPopupMenu;
    FileOpenItem: TMenuItem;
    TWAINOpenItem: TMenuItem;
    N1: TMenuItem;
    IsOldDiplomeCheckBox: TCheckBox;
    IsOldAcademCheckBox: TCheckBox;
    IsSlimCheckBox: TCheckBox;
    IsSlimAcademCheckBox: TCheckBox;
    AdditionalTabSheet: TTabSheet;
    GroupBox5: TGroupBox;
    DFnameLabel: TLabel;
    DMNameLabel: TLabel;
    DLnameLabel: TLabel;
    DFNameEdit: TDBEdit;
    DMNameEdit: TDBEdit;
    DLNameEdit: TDBEdit;
    DiplomCopyBtn: TButton;
    isDuplicateCheckBox: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure HotelCheckBoxClick(Sender: TObject);
    procedure IsMaleEditChange(Sender: TObject);
    procedure TestsEditChange(Sender: TObject);
    procedure ParentLessEditClick(Sender: TObject);
    procedure PAddBtnClick(Sender: TObject);
    procedure ParentsDataSourseDataChange(Sender: TObject; Field: TField);
    procedure PDelBtnClick(Sender: TObject);
    procedure PEditBtnClick(Sender: TObject);
    procedure BirthDateLookupBtnClick(Sender: TObject);
    procedure GetDateLookupBtnClick(Sender: TObject);
    procedure DiplGetDateLookupBtnClick(Sender: TObject);
    procedure ExamDateLookupBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FirstDiplomeFormBtnClick(Sender: TObject);
    procedure ComissionDateLookupBtnClick(Sender: TObject);
    procedure GOSLookupBtnClick(Sender: TObject);
    procedure SecondDiplomeFormBtnClick(Sender: TObject);
    procedure AddAcademBtnClick(Sender: TObject);
    procedure DelAcademBtnClick(Sender: TObject);
    procedure EditAcademBtnClick(Sender: TObject);
    procedure PrintAcademBtnClick(Sender: TObject);
    procedure AcademSourceDataChange(Sender: TObject; Field: TField);
    procedure SprBtnClick(Sender: TObject);
    procedure FileOpenItemClick(Sender: TObject);
    procedure DiplomCopyBtnClick(Sender: TObject);
  private
  AReadOnly : boolean;
    { Private declarations }
  public
  property isreadOnly: boolean read AReadOnly write AReadOnly;
    { Public declarations }
  end;

var
  StudentForm   : TStudentForm;

implementation

uses man_mainform, kern;


{$R *.dfm}


procedure CallbackFxn(CurDib: THandle; index: Integer); stdcall;
begin
//   MessageBox(0, 'Called back!', 'CallbackFxn', mb_ok);
end;

procedure TStudentForm.FormCreate(Sender: TObject);
begin
// Инициализация начальных параметров
InYearEdit.Text := IntToStr(CurrentYear);
OutYearEdit.Text := IntToStr(CurrentYear);
IsMaleEdit.ItemIndex := 0;
ParentsQuery.Connection := MainForm.Connection;
LangQuery.Connection := MainForm.Connection;
//if ParentsQuery.Active then
//ParentsQuery.Close;
if not PlaceQuery.Active then
PlaceQuery.Open;
if not SchoolQuery.Active then
SchoolQuery.Open;
if not LangQuery.Active then
LangQuery.Open;
AreadOnly := true;
if AReadOnly then
  begin
  PersonalSheet.Enabled := isReadOnly;
  DocumSheet.Enabled := isReadOnly;
  ParentsSheet.Enabled := isReadOnly;
  DiplomeSheet.Enabled := isReadOnly;
  AcademSheet.Enabled := isReadOnly;
  AdditionalTabSheet.Enabled := isReadOnly;
  end;
end;



procedure TStudentForm.IsMaleEditChange(Sender: TObject);
begin
if IsMaleEdit.ItemIndex >= 0 then
TestsEdit.ItemIndex := IsMaleEdit.ItemIndex;
StudentQuery.FieldByName('st_IsMale').AsBoolean := (IsMaleEdit.ItemIndex > 0);
StudentQuery.FieldByName('st_Tests').AsString := TestsEdit.Text;
OkBtn.Enabled := (TestsEdit.ItemIndex>=0) and (IsMaleEdit.ItemIndex>=0);
end;

procedure TStudentForm.TestsEditChange(Sender: TObject);
begin
if TestsEdit.ItemIndex >= 0 then
IsMaleEdit.ItemIndex := TestsEdit.ItemIndex;
StudentQuery.FieldByName('st_IsMale').AsBoolean := (IsMaleEdit.ItemIndex > 0);
StudentQuery.FieldByName('st_Gender').AsString := IsMaleEdit.Text;
OkBtn.Enabled := (TestsEdit.ItemIndex>=0) and (IsMaleEdit.ItemIndex>=0);
end;

procedure TStudentForm.ParentLessEditClick(Sender: TObject);
begin
if (StudentQuery.State = dsInsert) then
 begin
 ParentsQuery.Active := false;
 ParentsGroupBox.Visible := false;
end
else if (StudentQuery.State = dsEdit) then
 begin
 ParentsQuery.Active := not ParentLessEdit.Checked;
 ParentsGroupBox.Visible := not ParentLessEdit.Checked;
end;
end;

procedure TStudentForm.PAddBtnClick(Sender: TObject);
begin
NotYet();
end;

procedure TStudentForm.HotelCheckBoxClick(Sender: TObject);
begin
AddrGroupBox.Enabled := not HotelCheckBox.Checked;
end;

procedure TStudentForm.ParentsDataSourseDataChange(Sender: TObject;
  Field: TField);
begin
PEditBtn.Enabled := ParentsQuery.RecordCount > 0;
PDelBtn.Enabled := ParentsQuery.RecordCount > 0;
PAddBtn.Enabled := ParentsQuery.RecordCount < 2;
end;

procedure TStudentForm.PDelBtnClick(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes, mbNo],0) = mrYes then
begin
ParentsCommand.CommandText := 'DELETE FROM Parents WHERE pr_pcode = '''+
  ParentsQuery.FieldByName('pr_pcode').AsString+''';';
ParentsCommand.Execute;
ParentsQuery.Requery([]);
end;
end;

procedure TStudentForm.PEditBtnClick(Sender: TObject);
begin
NotYet()
end;

procedure TStudentForm.BirthDateLookupBtnClick(Sender: TObject);
begin
NotYet();
end;

procedure TStudentForm.GetDateLookupBtnClick(Sender: TObject);
begin
NoTYet();
end;

procedure TStudentForm.DiplGetDateLookupBtnClick(Sender: TObject);
begin
NotYet();
end;

procedure TStudentForm.ExamDateLookupBtnClick(Sender: TObject);
begin
NotYet();
end;

procedure TStudentForm.FormShow(Sender: TObject);
begin
if (StudentQuery.State = dsInsert) then
 begin
 IsMaleEdit.ItemIndex := 0;
 ParentsQuery.Active := false;
 ParentsGroupBox.Visible := false;
end
else if (StudentQuery.State = dsEdit) then
 begin
 ParentsQuery.Active := not ParentLessEdit.Checked;
 ParentsGroupBox.Visible := not ParentLessEdit.Checked;
 end;
end;

procedure TStudentForm.OkBtnClick(Sender: TObject);
begin
StudentQuery.Post;
StudentQuery.Close;
end;

procedure TStudentForm.CancelBtnClick(Sender: TObject);
begin
StudentQuery.CanCel;
StudentQuery.Close;
end;

procedure TStudentForm.FirstDiplomeFormBtnClick(Sender: TObject);
begin
NotYet();
end;


procedure TStudentForm.ComissionDateLookupBtnClick(Sender: TObject);
begin
NotYet();
end;


procedure TStudentForm.GOSLookupBtnClick(Sender: TObject);
begin
NotYet();
end;

procedure TStudentForm.SecondDiplomeFormBtnClick(Sender: TObject);
begin
NotYet();
end;


procedure TStudentForm.AddAcademBtnClick(Sender: TObject);
begin
NotYet();
end;



procedure TStudentForm.DelAcademBtnClick(Sender: TObject);
begin
NotYet();
end;


procedure TStudentForm.EditAcademBtnClick(Sender: TObject);
begin
NotYet();
end;



procedure TStudentForm.PrintAcademBtnClick(Sender: TObject);
begin
NotYet();
end;



procedure TStudentForm.AcademSourceDataChange(Sender: TObject;
  Field: TField);
begin
PrintAcademBtn.Enabled := AcademQuery.Active and (AcademQuery.RecordCount > 0);
DelAcademBtn.Enabled := AcademQuery.Active and (AcademQuery.RecordCount > 0);
EditAcademBtn.Enabled := AcademQuery.Active and (AcademQuery.RecordCount > 0);
end;

procedure TStudentForm.SprBtnClick(Sender: TObject);
begin
NotYet();
end;

procedure TStudentForm.FileOpenItemClick(Sender: TObject);
begin
NotYet();
end;


procedure TStudentForm.DiplomCopyBtnClick(Sender: TObject);
begin
NotYet();
end;

end.
