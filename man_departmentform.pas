unit man_departmentform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TDepartmentForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DepartmentName: TDBEdit;
    MasterLookupListBox: TDBLookupComboBox;
    OkBtn: TButton;
    CancelBtn: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DepartmentForm: TDepartmentForm;

implementation

uses man_mainform;

{$R *.dfm}

end.
