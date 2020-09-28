object Form1: TForm1
  Left = 871
  Top = 447
  Caption = 'Form1'
  ClientHeight = 386
  ClientWidth = 463
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
  object Memo1: TMemo
    Left = 8
    Top = 105
    Width = 425
    Height = 273
    TabOrder = 0
  end
  object btnAdd: TButton
    Left = 16
    Top = 56
    Width = 75
    Height = 25
    Caption = #28155#21152
    TabOrder = 1
    OnClick = btnAddClick
  end
  object btnDel: TButton
    Left = 104
    Top = 56
    Width = 75
    Height = 25
    Caption = #21024#38500
    TabOrder = 2
  end
  object btnFind: TButton
    Left = 185
    Top = 56
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 3
    OnClick = btnFindClick
  end
  object btnUpadte: TButton
    Left = 270
    Top = 56
    Width = 75
    Height = 25
    Caption = #20462#25913
    TabOrder = 4
  end
  object btnclean: TButton
    Left = 351
    Top = 56
    Width = 75
    Height = 25
    Caption = #28165#31354
    TabOrder = 5
  end
  object edtUname: TEdit
    Left = 32
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 6
  end
end
