program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

  {*------------------------------------------------------------------------------
    1、表达式
          由运算符和合法的表示符组成的序列

          划分：根据运算结果的类型    1<2    1+1
    2、语句：
          主要有关键字和操作指令组成
          划分
              选择语句
                  if

                  case
              循环语句
  -------------------------------------------------------------------------------}
begin
  //if语句格式
  //1、标准格式
  if 1 < 2 then
  begin
    //当判断条件成立是，执行的代码
    //向控制台输出一句话
    Writeln('秀呀');
  end;

  //简写方式:前提是只需要执行一行代码
  if 1 < 2 then
    Writeln('秀呀');

  //如果否则
  if True then
  begin
    Writeln('秀呀');
  end
  else
  begin
    Writeln('秀呀兄嘚');
  end;


  //简写
  if True then
    Writeln('秀呀')
  else
    Writeln('秀呀');


  //从控制台读入一行文本，直到遇到回车(换行符)
  Readln;
end.

