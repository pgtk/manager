program manager;

uses
  Forms,
  man_mainform in 'man_mainform.pas' {MainForm},
  kern in 'kern.pas',
  man_subjectform in 'man_subjectform.pas' {SubjectForm},
  man_schoolform in 'man_schoolform.pas' {SchoolForm},
  man_departmentform in 'man_departmentform.pas' {DepartmentForm},
  man_workerform in 'man_workerform.pas' {WorkerForm},
  man_specialityform in 'man_specialityform.pas' {SpecialityForm},
  dep_studentform in 'dep_studentform.pas' {StudentForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TStudentForm, StudentForm);
  Application.Run;
end.
