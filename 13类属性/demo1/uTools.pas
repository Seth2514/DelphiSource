unit uTools;

interface
{��������}

uses
  Unit1;

var
  Name: string;

type
  TPerson = class
      {�ֶΡ���}
  private
    FName: string;
    FAge: Integer;
    //����һ�����������ڻ�ȡ�ֶε�ֵ
    function GetAge(): Integer;
    procedure SetAge(FAge: Integer);
  public
    {����}
    property Name: string read FName write FName;
    {��������һ��ֻ������}
    property Age: Integer read GetAge write SetAge;
  end;

  TStudent=class
  public
    procedure Demo1();
  end;


implementation
{ʵ������}

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
{��ʼ������}
  Name := '����';
  Age := 18;

finalization
{��������}
  Name := '';
  Age := 0;

end.

