object Form1: TForm1
  Left = 891
  Top = 366
  Caption = 'Form1'
  ClientHeight = 356
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 32
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Button1: TButton
    Left = 40
    Top = 72
    Width = 75
    Height = 25
    Caption = #24320#22987#36816#31639
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 152
    Top = 72
    Width = 75
    Height = 25
    Caption = #36824#21407#26631#31614
    TabOrder = 1
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 40
    Top = 144
    Width = 297
    Height = 153
    Caption = #22810#32447#31243#25511#21046
    TabOrder = 2
    object Label2: TLabel
      Left = 32
      Top = 40
      Width = 31
      Height = 13
      Caption = 'Label2'
    end
    object btnStart: TButton
      Left = 128
      Top = 24
      Width = 75
      Height = 25
      Caption = #24320#22987
      TabOrder = 0
      OnClick = btnStartClick
    end
    object btnSuspend: TButton
      Left = 128
      Top = 55
      Width = 75
      Height = 25
      Caption = #26242#20572
      TabOrder = 1
      OnClick = btnSuspendClick
    end
    object btnContinue: TButton
      Left = 128
      Top = 86
      Width = 75
      Height = 25
      Caption = #32487#32493
      TabOrder = 2
      OnClick = btnContinueClick
    end
    object btnStop: TButton
      Left = 128
      Top = 117
      Width = 75
      Height = 25
      Caption = #20572#27490
      TabOrder = 3
      OnClick = btnStopClick
    end
  end
end
