program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;
  {
       1、变量
          编程中最小的存储单元(空间)，它的空间大小由它在声明是的数据类型决定

          1）声明：
              定义一个变量，告诉Delphi我们要使用一个名字是xxx空间大小是xxx的内存空间

              var 变量名:数据类型;

          2）初始化：给变量的第一次赋值
              赋值：变量名：=变量的值;

       2、运算符
            算术运算符：+ - * /(不会整除)  div(整除) mod(求模、求余数)
            比较运算符
            布尔运算符

       3、表达式
  }
var
    //只是进行声明
    Age:Integer;
    //这种方式是声明并且初始化一个变量
var
    Name:string='小黑';
begin
    //初始化
    age:=0;
    //写出(写出到控制台)指定的内容
    Writeln(6/4);
    Writeln(6 div 3);
    Writeln(6 mod 4);

//布尔运算符
    Writeln(not (1<>2));
    //优先级
    //and:比较的条件中有一个结果是false，那么整体的结果就是false
    Writeln((1<2) and (2<3));
    //or:比较的条件中有一个结果是true，那么整体的结果就是true
    Writeln((1<2) or (2<3));
    //xor:判断条件中相同为false，不同为真(true)
    Writeln((1<2) xor (2<3));
     Writeln((1<2) xor (2>3));

     Writeln('结果是:',1+2);

    //从控制台读入一行内容，它现在的主要作用就是暂停，等待我们按下回车键
    Readln;
end.
