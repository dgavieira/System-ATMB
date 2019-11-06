unit F_exercicios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Comobj, speechlib_tlb;

type
  Tf_exerc = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label2: TLabel;
    Button6: TButton;
    Button7: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Enter(Sender: TObject);
    procedure Button1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Enter(Sender: TObject);
    procedure Button3Enter(Sender: TObject);
    procedure Button4Enter(Sender: TObject);
    procedure Button5Enter(Sender: TObject);
    procedure Button6Enter(Sender: TObject);
    procedure Button7Enter(Sender: TObject);
    procedure Button7Exit(Sender: TObject);
    procedure Button2Exit(Sender: TObject);
    procedure Button3Exit(Sender: TObject);
    procedure Button4Exit(Sender: TObject);
    procedure Button5Exit(Sender: TObject);
    procedure Button6Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_exerc: Tf_exerc;
  voz: Variant;
implementation

{$R *.dfm}

procedure Tf_exerc.Button1Click(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.speak(Label2.Caption + Label3.Caption +Label4.Caption +Label5.Caption + Label6.Caption );
end;

procedure Tf_exerc.Button1Enter(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.speak('Boatum ler enunciado');
end;

procedure Tf_exerc.Button1Exit(Sender: TObject);
begin
voz.pause;
end;



procedure Tf_exerc.Button2Click(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.speak('Alternativa incorreta');
end;

procedure Tf_exerc.Button2Enter(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.speak('Escolher a alternativa a');
end;

procedure Tf_exerc.Button2Exit(Sender: TObject);
begin
voz.pause;
end;

procedure Tf_exerc.Button3Click(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.speak('Parabéns !! Alternativa correta coreta');
end;

procedure Tf_exerc.Button3Enter(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.speak('Escolher a alternativa B');
end;

procedure Tf_exerc.Button3Exit(Sender: TObject);
begin
voz.pause;
end;

procedure Tf_exerc.Button4Click(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.speak('Alternativa incorreta');
end;

procedure Tf_exerc.Button4Enter(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.speak('Escolher a alternativa c');
end;

procedure Tf_exerc.Button4Exit(Sender: TObject);
begin
voz.pause;
end;

procedure Tf_exerc.Button5Click(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.speak('Alternativa incorreta');
end;

procedure Tf_exerc.Button5Enter(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.speak('Escolher a alternativa d');
end;

procedure Tf_exerc.Button5Exit(Sender: TObject);
begin
voz.pause;
end;

procedure Tf_exerc.Button6Enter(Sender: TObject);
begin
f_exerc.close;
end;

procedure Tf_exerc.Button6Exit(Sender: TObject);
begin
voz.pause;
end;

procedure Tf_exerc.Button7Click(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.speak('Nessa tela temos um enunciado, que pode ser lido junto a suas alternativas');
voz.speak('atraves do botão ler enunciado. Existem botões para selecionar as alternativas');
voz.speak('O botão fexhar fecha essa tela');
end;

procedure Tf_exerc.Button7Enter(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.speak('Botão explicação da tela');
end;

procedure Tf_exerc.Button7Exit(Sender: TObject);
begin
voz.pause;
end;

procedure Tf_exerc.FormShow(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.speak('Nova tela aberta, Tela de exercícios');
end;

end.
