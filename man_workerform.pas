unit man_workerform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TWorkerForm = class(TForm)
    FNameEdit: TLabeledEdit;
    MNameEdit: TLabeledEdit;
    LNameEdit: TLabeledEdit;
    OkBtn: TButton;
    CancelBtn: TButton;
    Label1: TLabel;
    BDateEdit: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WorkerForm: TWorkerForm;

implementation

{$R *.dfm}

procedure TWorkerForm.FormCreate(Sender: TObject);
begin
BDateEdit.Date := Now;
end;

end.
