unit kern;


interface


uses QDialogs, SysUtils, Controls, Windows;

const
BASE_REPO         = '\\HERCULES\Base$\departments\newdep.exe';
MARK_REPO         = '\\HERCULES\Base$\marketing\marketing.exe';
DIR_REPO          = '\\HERCULES\Base$\director\director.exe';
MAN_REPO          = '\\HERCULES\Base$\manager\manager.exe';
ID_LENGTH         = 38; // длина идентификатора MS SQL
MAXWEEK           = 5; // Максимальное кол-во недель в месяце
MAXWORK           = 70; // Максимальная учебная нагрузка в неделю
NA                = 10; // Не аттестован
NN                = 11; // Освобожден
NS                = 12; // Не изучал данный предмет
ZC                = 13; // зачет без оценки
MINAVG            = 4.75; // Средний балл краснодипломника

ACADEM            = 1; // В академе
ADD_COURSE        = 2; // Повторный курс
DEL_ERR           = 4; // Удален по ошибке
DEL_LEG           = 8; // Удален по приказу
ARCH              = 128; // Архивный
LINESCOUNT        = 30; // число строк на выписке

MAX_PK_WEEK       = 100; // максимум недель практики (255 макс)
MIN_PK_WEEK       = 1; // минимум недель практики
DELETE_REQ        = 'Действительно удалить выбранные записи?';
ARCHIVE_REQ       = 'Поместить выбранную группу в архив?';
RESTORE_REQ       = 'Вернуть студента в группу из которой он был удален?';
DEPMODULE_CAPTION = 'Модуль отделения';
NEW_STUDENT       = 'Новый студент группы ';
EX_STUDENT        = 'Данные студента группы ';
SKILLS            = 'Успеваемость ';
NEW_GROUP         = 'Новая группа ';
EX_GROUP          = 'Параметры группы ';
GROUPMAN_CAPTION  = 'Группы специальности ';
NONE_STUDENTS     = 'В группе нет ни одного студента';
NEW_SPEC          = 'Новая специальность';
WEEK_MISSINGS     = 'Пропуски за неделю ';
NOPE              = 'не предусмотрено';
PARAMSFILENAME    = 'params.dat';
OP_ERROR          = 'При выполнении операции произошла ошибка!';
ST_ERROR          = 'Заполнены не все необходимые данные студента!';
filename          = 'connection.udl';
UPD_FILE          = 'updater.exe';
NO_COURSE         = 'Нет курсовых проектов по данному предмету. Укажите наличие курсового.';
ALL_PRINT         = 'Внимание! '+#$D+'Ведомости для всех групп будут отправлены на печать автоматически!'+#$D+'Распечатать?';

procedure NotYet;
procedure NotForYou;
function FileInfo(NameApp: string): extended;
function GetMounthStr(const mounth: word): string;
function GetRMounthStr(const mounth: word): string;
function GetYears(const BMounth, BYear : word): string;
function GetYearsNum(const BMounth, BYear : word): string;
function GetStr(const value: word): string;
function GetDateStr(const date: TDate): string;
function GetWeekPrefix(const nweeks: double): string;
function GetCourse(const semester: integer):string;
function MarkToStr(const mark: integer): string;
function Roof(const a, b: word): word;
function GetDottedFloat(const fstr: string): string;

type
TContainer = class(TObject)
private
AName : string;
AKey  : string;
AValue: integer;
public
property Name: string read AName write AName;
property Key: string read AKey write AKey;
property Value: integer read AValue write AValue;
end;




implementation

function FileInfo(NameApp: string): extended;
var
  dump: DWORD;
  size: integer;
  buffer: PChar;
  VersionPointer, TransBuffer: PChar;
  Temp: integer;
  CalcLangCharSet: string;
  res   : string;
  x     : integer;

begin
try
  size := GetFileVersionInfoSize(PChar(NameApp), dump);
  buffer := StrAlloc(size+1);
  try
    GetFileVersionInfo(PChar(NameApp), 0, size, buffer);

    VerQueryValue(buffer, '\VarFileInfo\Translation', pointer(TransBuffer),
    dump);
    if dump >= 4 then
    begin
      temp:=0;
      StrLCopy(@temp, TransBuffer, 2);
      CalcLangCharSet:=IntToHex(temp, 4);
      StrLCopy(@temp, TransBuffer+2, 2);
      CalcLangCharSet := CalcLangCharSet+IntToHex(temp, 4);
    end;

    VerQueryValue(buffer, pchar('\StringFileInfo\'+CalcLangCharSet+
    '\'+'FileVersion'), pointer(VersionPointer), dump);
    if (dump > 1) then
    begin
      SetLength(Res, dump);
      StrLCopy(Pchar(Res), VersionPointer, dump);
    end
    else
      res := '0.0.0.0';
  finally
    StrDispose(Buffer);
  end;
except
res := '0.0.0.0';
end;
res := trim(res);
for x := 1 to length(res) do
  if res[x] = '.' then
    res[x] := '0';
Result := StrToFloatDef(res,0);
end;



function Roof(const a, b: word): word;
var
d  : word;
begin
  d := a div b;
  if (a mod b) > 0 then inc(d);
  Result := d;
end;


function GetMounthStr(const mounth: word): string;
begin
Result := '';
case mounth of
1  : Result := 'январь';
2  : Result := 'февраль';
3  : Result := 'март';
4  : Result := 'апрель';
5  : Result := 'май';
6  : Result := 'июнь';
7  : Result := 'июль';
8  : Result := 'август';
9  : Result := 'сентябрь';
10 : Result := 'октябрь';
11 : Result := 'ноябрь';
12 : Result := 'декабрь';
end;
end;

function GetRMounthStr(const mounth: word): string;
begin
Result := '';
case mounth of
1  : Result := 'января';
2  : Result := 'февраля';
3  : Result := 'марта';
4  : Result := 'апреля';
5  : Result := 'мая';
6  : Result := 'июня';
7  : Result := 'июля';
8  : Result := 'августа';
9  : Result := 'сентября';
10 : Result := 'октября';
11 : Result := 'ноября';
12 : Result := 'декабря';
end;
end;


procedure NotYet;
begin
MessageDlg('Данная функция пока не реализована',mtInformation,
[mbOk],0);
end;

procedure NotForYou;
begin
MessageDlg('Данная функция вам недоступна',mtError,
[mbOk],0);
end;

function GetYears(const BMounth, BYear : word): string;
const
year = ' учебного года';
begin
if BMounth >= 9 then
  Result := IntToStr(BYear)+'-'+IntToStr(BYear+1)+year
else
  Result := IntToStr(BYear-1)+'-'+IntToStr(BYear)+year
end;

function GetCourse(const semester: integer): string;
const
course = ' курс';
begin
case semester of
 1,2 : Result := '1'+course;
 3,4 : Result := '2'+course;
 5,6 : Result := '3'+course;
 7,8 : Result := '4'+course;
end; // case
end;

function GetYearsNum(const BMounth, BYear : word): string;
begin
if BMounth >= 9 then
  Result := IntToStr(BYear)+'-'+IntToStr(BYear+1)
else
  Result := IntToStr(BYear-1)+'-'+IntToStr(BYear);
end;


function GetStr(const value: word): string;
begin
if value < 10 then
  Result := '0'+IntToStr(value)
else
  Result := IntToStr(value);
end;


function GetDateStr(const date: TDate): string;
var
d, m, y : word;
mstr    : string;

begin
DecodeDate(date, y, m, d);
case m of
 1  : mstr := ' января ';
 2  : mstr := ' февраля ';
 3  : mstr := ' марта ';
 4  : mstr := ' апреля ';
 5  : mstr := ' мая ';
 6  : mstr := ' июня ';
 7  : mstr := ' июля ';
 8  : mstr := ' августа ';
 9  : mstr := ' сентября ';
10  : mstr := ' октября ';
11  : mstr := ' ноября ';
12  : mstr := ' декабря ';
end; // case
if d < 10 then
  Result := '0'+intToStr(d)+mstr+IntToStr(y)
else
  Result := intToStr(d)+mstr+IntToStr(y);
end;


function GetWeekPrefix(const nweeks: double): string;
var
weeks : integer;

begin
weeks := trunc(nweeks);
if (weeks > 20) then
  weeks := weeks mod 10;
 Result := FloatToStr(nweeks);
 case weeks of
 0,5..20 : Result := Result+' недель';
 1       : Result := Result+' неделя';
 2..4    : Result := Result+' недели';
 end;
end;

function MarkToStr(const mark: integer): string;
begin
  case mark of
   0..2 : Result := '';
   3    : Result := 'удовлетворительно';
   4    : Result := 'хорошо';
   5    : Result := 'отлично';
   13   : Result := 'зачет';
  end; // case
end;


function GetDottedFloat(const fstr: string): string;
var
str   : string;
x     : integer;
float : real;

begin
str := fstr;
for x := 1 to length(str) do
  if str[x] = '.' then str[x] := ',';
float := StrToFloatDef(str,0);
if 0 > float then
  str := 'NULL' else
  begin
  str := FloatToStr(float);
  for x := 1 to length(str) do
    if str[x] = ',' then str[x] := '.';
  end;
Result := str;
end;

end.
