unit Unit1;

interface

type
  IColor = interface
  end;

  TAnimal = class(TInterfacedObject)
  public
    procedure Run(); virtual; abstract;
  end;

  TDog = class(TAnimal, IColor)
    procedure Run(); override;
    procedure LookDoor();
  end;

  TCat = class(TAnimal)
    procedure Run(); override;
    procedure CathMouse();
  end;

implementation

{ TDog }

procedure TDog.LookDoor;
begin
  Writeln('狗看门');
end;

procedure TDog.Run;
begin
  Writeln('狗在飞');
end;

{ TCat }

procedure TCat.CathMouse;
begin
  Writeln('猫捉老鼠');
end;

procedure TCat.Run;
begin
  Writeln('猫在游');
end;

end.

