program Project1;

{$APPTYPE CONSOLE}

{$R *.res}
{*------------------------------------------------------------------------------

ʲô�Ƕ�̬
        ��װ���̳С���̬

        һ�������Զ�����̬���ڡ����磺������͹��ࡢè��Ĺ�ϵ

        ǰ�᣺������߱��̳�(����)��ʵ�������ֹ�ϵ��һ��

        �������֣�������ջ�ָ�����������
��ʲô��
        ��ߴ���ĸ����ԣ��������ǶԴ�����н���(�����֮�䲻Ҫ����ֱ�ӵ�������ϵ)

        ���
��ôʹ��
-------------------------------------------------------------------------------}
uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';

//����ת�ͣ���������������ת�����˸������������
procedure ShowAnimalRun(Animal: TAnimal);
var
  Dog: TDog;
begin

  //����ʱ����������
  Animal.Run();
  //����ת�ͣ��Ѹ�����������ת�����������������
  if Assigned(Dog) then begin
    Writeln('�ǿ�ֵ');
  end;
  if Animal.ClassName = 'TDog' then begin
    //ǿ������ת��
    Dog := TDog(Animal);
    Dog.LookDoor;
  end;

  //�ж�һ�������Ƿ��һ�����ͼ���
  if Animal is TDog then begin
    Dog := Animal as TDog;

    Dog.LookDoor;
  end;

end;

begin

  ShowAnimalRun(TCat.Create);
  Readln;
end.

