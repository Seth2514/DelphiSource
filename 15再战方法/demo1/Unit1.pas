unit Unit1;

interface

type
  TAnimal = class
  public
    procedure Talk();

    {���ⷽ��}
    function Run(): Integer; dynamic;
    {�෽��}
    class procedure Eat();

    {���췽��}
    constructor Create1();
    {���󷽷�:�淶��һ��ָ�涨}
    procedure Sleep();virtual;abstract;
  end;

  TDog = class(TAnimal)
  public
    function Run(): Integer;
    procedure Sleep();
  end;

implementation

{ TPersion }

constructor TAnimal.Create1;
begin
  Writeln('���췽��ִ����');
end;

class procedure TAnimal.Eat;
begin
  Writeln('Eat');
end;

function TAnimal.Run: Integer;
begin
{һ������£���������ⷽ������һ����ʵ��}
end;

procedure TAnimal.Talk;
begin
  Writeln('Talk');
end;

{ TUser }

function TDog.Run: Integer;
begin
  Writeln('����������');
end;

procedure TDog.Sleep;
begin

end;

end.

