unit Fprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, jpeg, ExtCtrls, Buttons,F_historico,
  FCelaBraille,FTeoriaMusical,ComObj,SpeechLib_TLB, F_exercicios,FMusicografiaBraille;

type
  TForm_Principal = class(TForm)
    Img_fundo_Pr: TImage;
    Img_logo: TImage;
    Label_title: TLabel;
    btn_hist: TBitBtn;
    Pn_Hist: TPanel;
    Pn_Tm: TPanel;
    Pn_SfMb: TPanel;
    Pn_Cb: TPanel;
    Pn_MsBr: TPanel;
    Pn_Ex: TPanel;
    Btn_Cb: TBitBtn;
    Btn_Tm: TBitBtn;
    Btn_MuBr: TBitBtn;
    Btn_SfMs: TBitBtn;
    Btn_Ex: TBitBtn;
    btn_expl_principal: TBitBtn;
    Pn_expl_prin: TPanel;
    btn_fxr_principal: TBitBtn;
    Pn_fxr_princ: TPanel;
    procedure btn_histClick(Sender: TObject);
    procedure Pn_CbClick(Sender: TObject);
    procedure Btn_CbClick(Sender: TObject);
    procedure Btn_ExClick(Sender: TObject);
    procedure Btn_MuBrClick(Sender: TObject);
    procedure Btn_SfMsClick(Sender: TObject);
    procedure Btn_TmClick(Sender: TObject);
    procedure Btn_CbExit(Sender: TObject);
    procedure Btn_ExExit(Sender: TObject);
    procedure btn_expl_principalExit(Sender: TObject);
    procedure btn_fxr_principalExit(Sender: TObject);
    procedure btn_histExit(Sender: TObject);
    procedure Btn_MuBrExit(Sender: TObject);
    procedure Btn_SfMsExit(Sender: TObject);
    procedure Btn_TmExit(Sender: TObject);
    procedure Btn_CbEnter(Sender: TObject);
    procedure Btn_ExEnter(Sender: TObject);
    procedure btn_expl_principalEnter(Sender: TObject);
    procedure btn_fxr_principalEnter(Sender: TObject);
    procedure btn_histEnter(Sender: TObject);
    procedure Btn_MuBrEnter(Sender: TObject);
    procedure Btn_SfMsEnter(Sender: TObject);
    procedure Btn_TmEnter(Sender: TObject);
    procedure btn_expl_principalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Principal: TForm_Principal;
  voz: OLEVariant;
  crtl_falainicial:integer=0;
implementation

uses F_TM_andamento;

{$R *.dfm}

procedure TForm_Principal.Btn_CbClick(Sender: TObject);
begin
Form_CB.ShowModal;
end;

procedure TForm_Principal.Btn_CbEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.speak('Botão Cela Braille',SVSFlagsAsync);
end;

procedure TForm_Principal.Btn_CbExit(Sender: TObject);
begin
voz.pause;
end;

procedure TForm_Principal.Btn_ExClick(Sender: TObject);
begin
f_exerc.showmodal;
end;

procedure TForm_Principal.Btn_ExEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.speak('Botão Exercício',SVSFlagsAsync);
end;

procedure TForm_Principal.Btn_ExExit(Sender: TObject);
begin
voz.pause;
end;

procedure TForm_Principal.btn_expl_principalClick(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.speak('Essa é a tela Inicial do programa, nela nós temos 8 botões contando com este',SVSFlagsAsync);
voz.Speak('O fundo da tela é escuro e tem o logotipo do projeto desenvolvedor do programa',SVSFlagsAsync);
voz.Speak('O primeiro Botão é Histórico, ele abre uma outra outra tela que através de textos explicativos e uma série de exercicios visa fornecer informações sobe o histórico da Musicografia Braille',SVSFlagsAsync);
voz.Speak('O segundo Botão é o Cela Braille, esse botão ensina Bases do código Braille,letras numeros e os pontos que o constituem',SVSFlagsAsync);
voz.Speak('O terceiro Botão é o de Teoria Musical, nele sào explicados os exlementos que compõem a música e a partitura,acompanhados de exercícios de fixação',SVsFlagsAsync);
voz.Speak('O quarto botão é o Musicografia Braille,Tudo ensinado no terceiro botão, é mostrado como é escrito através doSistema Braille, acompanhado de exercícios',SVSFlagsAsync);
voz.Speak('O quinto Botão é o Do software MusiBRaille, ele traz um tutorial sobre como usar o software musibraille',SVSFlagsAsync);
voz.Speak('O sexto botão é o específico para exercícios, com questões sobre todos os elementos do software, para comprovar se você realmente fixou os assuntos sobre a Musicografia Braille',SVSFlagsAsync);
end;

procedure TForm_Principal.btn_expl_principalEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.speak('Botão Explicação da tela',SVSFlagsAsync);
end;

procedure TForm_Principal.btn_expl_principalExit(Sender: TObject);
begin
voz.Pause;
end;

procedure TForm_Principal.btn_fxr_principalEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.speak('Botão Fechar',SVSFlagsAsync);
end;

procedure TForm_Principal.btn_fxr_principalExit(Sender: TObject);
begin
voz.Pause;
end;

procedure TForm_Principal.btn_histClick(Sender: TObject);
begin
voz.pause;
F_Tm_and.Show;
end;

procedure TForm_Principal.btn_histEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
if crtl_falainicial=0 then
begin
voz.speak('Olá, Bem vindo ao Softiuére Educativo de Muscicografia Braille',SVSFlagsAsync);
voz.speak('Se é a primeira vez que você usa o softiuér, sugiro que ouça a informação a seguir',SVSFlagsAsync);
voz.Speak('Se não, basta teclar em alguma das teclas de direção do teclado',SVSFlagsAsync);
voz.speak('Para informações sobre a tela em que você está navegando, proucure o botão explicações sobre a tela',SVSFlagsAsync);
voz.speak('Toda nova tela que for aberta tem um botão para a explicação da mesma',SVSFlagsAsync);
crtl_falainicial:=1;
end;
voz.speak('Botão Histórico',SVSFlagsAsync);
end;

procedure TForm_Principal.btn_histExit(Sender: TObject);
begin
voz.Pause;
end;

procedure TForm_Principal.Btn_MuBrClick(Sender: TObject);
begin
F_MusB.showmodal;
end;

procedure TForm_Principal.Btn_MuBrEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.speak('Botão Musicografia Braille',SVSFlagsAsync);
end;

procedure TForm_Principal.Btn_MuBrExit(Sender: TObject);
begin
voz.Pause;
end;

procedure TForm_Principal.Btn_SfMsClick(Sender: TObject);
begin
// WinExec('C:\arquivos de programas\Musibraille\musibraille\musibraille.exe', SW_SHOW);
end;

procedure TForm_Principal.Btn_SfMsEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.speak('Botão Softiuér MusiBraille',SVSFlagsAsync);
end;

procedure TForm_Principal.Btn_SfMsExit(Sender: TObject);
begin
voz.Pause;
end;

procedure TForm_Principal.Btn_TmClick(Sender: TObject);
begin
form_TM.ShowModal;
end;

procedure TForm_Principal.Btn_TmEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.speak('Botão teoria Musical',SVSFlagsAsync);
end;

procedure TForm_Principal.Btn_TmExit(Sender: TObject);
begin
voz.Pause;
end;

procedure TForm_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
voz.Pause;
end;



procedure TForm_Principal.Pn_CbClick(Sender: TObject);
begin
ShowMessage('Cela Braille');
end;

end.
