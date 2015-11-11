unit man_schoolform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TSchoolForm = class(TForm)
    NameEdit: TLabeledEdit;
    RNameEdit: TLabeledEdit;
    MinistryEdit: TLabeledEdit;
    PlaceEdit: TLabeledEdit;
    OkBtn: TButton;
    CancelBtn: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SchoolForm: TSchoolForm;

implementation

{$R *.dfm}

end.
