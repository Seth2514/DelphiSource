unit uTools;

interface
{声明区域}

uses
  Unit1;

var
  Name: string;

type
  TPerson = class
      {字段、域}
  private
    FName: string;
    FAge: Integer;
    //声明一个函数，用于获取字段的值
    function GetAge(): Integer;
    procedure SetAge(FAge: Integer);
  public
    {属性}
    property Name: string read FName write FName;
    {该属性是一个只读属性}
    property Age: Integer read GetAge write SetAge;
  end;

  TStudent=class
  public
    procedure Demo1();
  end;


implementation
{实现区域}

var
  Age: Integer;

{ TPerson }

function TPerson.GetAge: Integer;
begin
  Result := Self.FAge;
end;

procedure TPerson.SetAge(FAge: Integer);
begin
  Self.FAge := FAge;
end;

{ TStudent }

procedure TStudent.Demo1;
begin

end;

initialization
{初始化区域}
  Name := '许嵩';
  Age := 18;

finalization
{销毁区域}
  Name := '';
  Age := 0;

end.

