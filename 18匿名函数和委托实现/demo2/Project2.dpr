program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';

var
  Dog: TDog;
  Cat: TCat;
  Eat: IEat;
  Demo: TDemo;

begin
  Cat := TCat.Create;

  Cat.Eat := TDOG.Create;

  Cat.Eat.EatIng;
  demo := tdemo.Create;
  Demo.Eat := tdog.Create;
  Demo.Eat.EatIng;
  Readln;
end.

