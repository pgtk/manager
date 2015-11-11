unit man_subjectform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TSubjectForm = class(TForm)
    SubjectEdit: TLabeledEdit;
    OkBtn: TButton;
    CancelBtn: TButton;
    KindComboBox: TComboBox;
    Label1: TLabel;
    procedure KindComboBoxChange(Sender: TObject);
    procedure SubjectEditChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SubjectForm: TSubjectForm;

implementation

{$R *.dfm}

procedure TSubjectForm.KindComboBoxChange(Sender: TObject);
begin
OkBtn.Enabled := (Trim(SubjectEdit.Text) <> '') and (KindComboBox.ItemIndex >= 0);
end;

procedure TSubjectForm.SubjectEditChange(Sender: TObject);
begin
OkBtn.Enabled := Trim(SubjectEdit.Text) <> '';
end;

procedure TSubjectForm.FormCreate(Sender: TObject);
begin
KindComboBox.ItemIndex := 0;
OkBtn.Enabled := false;
end;

end.
