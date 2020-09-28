program Project3;

{$APPTYPE CONSOLE}

uses
  SysUtils;


  {*------------------------------------------------------------------------------
    定义一个过程：比较分数
  -------------------------------------------------------------------------------}

//声明一个过程
procedure ComparingFraction();
//过程的具体实现
var
  Fraction: Integer;
begin
  Writeln('请输入要判断的分数:');
  Readln(Fraction);
  if Fraction >= 60 then
  begin
    Writeln('合格');
  end
  else
  begin
    Writeln('不合格');
  end;
end;

{*------------------------------------------------------------------------------
  根据指定月份没打印该月份所属的季节
  3，4，5 春季 6，7，8 夏季 9，10，11 秋季 12，1，2冬季

  @param Month    需要判断的月份
-------------------------------------------------------------------------------}
procedure JudgmentSeason(Month: Integer);
begin
  //如果传过来的月份不在这个区间内，那么我就终止过程的执行
  if not ((Month > 0) and (Month < 13)) then
  begin
    Writeln('月份无法判断');
    Exit;
  end;
  if (Month >= 3) and (Month <= 5) then
  begin
    Writeln('春季');
    //终止过程的运行
    Exit;
  end;
  if (Month >= 6) and (Month <= 8) then
  begin
    Writeln('夏季');
    Exit
  end;
  if (Month >= 9) and (Month <= 11) then
  begin
    Writeln('秋季');
    Exit
  end;
  if (Month = 12) or ((Month > 0) and (Month < 3)) then
  begin
    Writeln('冬季');
  end;
end;

{*------------------------------------------------------------------------------
  根据指定月份没打印该月份所属的季节
  3，4，5 春季 6，7，8 夏季 9，10，11 秋季 12，1，2冬季

  @param Month    需要判断的月份
-------------------------------------------------------------------------------}
procedure JudgmentSeasonCase(Month: Integer);
begin
  case Month of
    3:
      begin
        Writeln('春季');
      end;
    4:
      begin
        Writeln('春季');
      end;
    5:
      begin
        Writeln('春季');
      end;
    6:
      begin
        Writeln('夏季');
      end;
    7:
      begin
        Writeln('夏季');
      end;
    8:
      begin
        Writeln('夏季');
      end;
    9:
      begin
        Writeln('秋季');
      end;
    10:
      begin
        Writeln('秋季');
      end;
    11:
      begin
        Writeln('秋季');
      end;
    12:
      begin
        Writeln('冬季');
      end;
    1:
      begin
        Writeln('冬季');
      end;
    2:
      begin
        Writeln('冬季');
      end;
  else
    begin
      Writeln('非法月份');
    end;
  end;

end;

{*------------------------------------------------------------------------------
  大家都知道，男大当婚，女大当嫁。那么女方家长要嫁女儿，当然要提出一定的条件：
     高：180cm以上; 富:1000万以上; 帅:是;
     如果这三个条件同时满足，则:'我一定要嫁给他'
     如果三个条件有为真的情况，则:'嫁吧，比上不足，比下有余。'
     如果三个条件都不满足，则:'不嫁！'
            @param Height  高
            @param Money   钱
            @param IsCool  帅
---------------------------------------------------------------------}
procedure MarryConditions(Height:Integer; Money:Double; IsCool:Boolean);
begin
  if (Height>=180) and (Money>=10000000) and IsCool then
  begin
    Writeln('我一定要嫁给他');
    Exit;
  end;
   if (Height>180) or (Money>=10000000) or IsCool then
   begin
    Writeln('嫁吧，比上不足，比下有余。');
    Exit;
  end;

  if not(Height>180) and (Money>=10000000) and IsCool then
   begin
    Writeln('不嫁');
    Exit;
  end;

end;



begin
  //调用
  //ComparingFraction();
  //JudgmentSeasonCase(3);
  MarryConditions(180,50000000,true);
  Readln;
end.

