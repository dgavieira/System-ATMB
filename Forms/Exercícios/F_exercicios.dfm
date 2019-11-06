object f_exerc: Tf_exerc
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cios'
  ClientHeight = 601
  ClientWidth = 637
  Color = clGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 136
    Top = 24
    Width = 377
    Height = 81
    AutoSize = False
    Caption = 'Exerc'#237'cios'
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -64
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 216
    Top = 128
    Width = 353
    Height = 65
    AutoSize = False
    Caption = 'Quem foi o inventor do sistema Braille?'
    WordWrap = True
  end
  object Label3: TLabel
    Left = 54
    Top = 224
    Width = 523
    Height = 33
    AutoSize = False
    Caption = 'Alternativa a) Juan Braille'
    WordWrap = True
  end
  object Label4: TLabel
    Left = 54
    Top = 280
    Width = 523
    Height = 33
    AutoSize = False
    Caption = 'Alternativa b) Louis Braille'
    WordWrap = True
  end
  object Label5: TLabel
    Left = 54
    Top = 336
    Width = 523
    Height = 33
    AutoSize = False
    Caption = 'Alternativa c) Luan Braille'
    WordWrap = True
  end
  object Label6: TLabel
    Left = 54
    Top = 400
    Width = 523
    Height = 33
    AutoSize = False
    Caption = 'Alternativa d) Eva Braille'
    WordWrap = True
  end
  object Button1: TButton
    Left = 32
    Top = 128
    Width = 145
    Height = 65
    Caption = 'Ler enunciado'
    TabOrder = 0
    OnClick = Button1Click
    OnEnter = Button1Enter
    OnExit = Button1Exit
  end
  object Button2: TButton
    Left = 32
    Top = 488
    Width = 97
    Height = 57
    Caption = 'escolher letra a'
    TabOrder = 1
    OnClick = Button2Click
    OnEnter = Button2Enter
    OnExit = Button2Exit
  end
  object Button3: TButton
    Left = 176
    Top = 488
    Width = 97
    Height = 57
    Caption = 'escolher a letra b'
    TabOrder = 2
    OnClick = Button3Click
    OnEnter = Button3Enter
    OnExit = Button3Exit
  end
  object Button4: TButton
    Left = 328
    Top = 488
    Width = 105
    Height = 57
    Caption = 'escolher a letra c'
    TabOrder = 3
    OnClick = Button4Click
    OnEnter = Button4Enter
    OnExit = Button4Exit
  end
  object Button5: TButton
    Left = 464
    Top = 488
    Width = 113
    Height = 57
    Caption = 'escolher a letra d'
    TabOrder = 4
    OnClick = Button5Click
    OnEnter = Button5Enter
    OnExit = Button5Exit
  end
  object Button6: TButton
    Left = 198
    Top = 551
    Width = 75
    Height = 25
    Caption = 'X'
    TabOrder = 5
    OnEnter = Button6Enter
    OnExit = Button6Exit
  end
  object Button7: TButton
    Left = 328
    Top = 551
    Width = 73
    Height = 25
    Caption = '?'
    TabOrder = 6
    OnClick = Button7Click
    OnEnter = Button7Enter
    OnExit = Button7Exit
  end
end
