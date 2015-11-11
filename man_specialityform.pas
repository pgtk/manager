unit man_specialityform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TSpecialityForm = class(TForm)
    NameEdit: TLabeledEdit;
    SpecializationEdit: TLabeledEdit;
    KvalificationEdit: TLabeledEdit;
    KeyEdit: TLabeledEdit;
    SHortNameEdit: TLabeledEdit;
    OkBtn: TButton;
    CancelBtn: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SpecialityForm: TSpecialityForm;

implementation

{$R *.dfm}

end.
