unit FCelaBraille;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons,ComObj,SpeechLIB_TLB,FCB_estrutura_CB
  , FCB_Abraille,FCB_Num ;

type
  TForm_CB = class(TForm)
    Img_tmpl_CB: TImage;
    Lbl_Title_Cb: TLabel;
    Pn_CB_EstrCB: TPanel;
    Pn_CB_AlFbBr: TPanel;
    Pn_CB_Num: TPanel;
    Pn_CB_Simb: TPanel;
    Pn_CB_Ex: TPanel;
    Pn_CB_Expl: TPanel;
    Pn_CB_fexr: TPanel;
    Btn_CB_EstCB: TBitBtn;
    Btn_CB_AlfB: TBitBtn;
    Btn_CB_Num: TBitBtn;
    Btn_CB_Sim: TBitBtn;
    Btn_CB_ex: TBitBtn;
    Btn_CB_Expl: TBitBtn;
    Btn_CB_fexr: TBitBtn;
    procedure Btn_CB_fexrClick(Sender: TObject);
    procedure Btn_CB_AlfBExit(Sender: TObject);
    procedure Btn_CB_EstCBExit(Sender: TObject);
    procedure Btn_CB_exExit(Sender: TObject);
    procedure Btn_CB_ExplExit(Sender: TObject);
    procedure Btn_CB_fexrExit(Sender: TObject);
    procedure Btn_CB_NumExit(Sender: TObject);
    procedure Btn_CB_SimExit(Sender: TObject);
    procedure Btn_CB_SimEnter(Sender: TObject);
    procedure Btn_CB_AlfBEnter(Sender: TObject);
    procedure Btn_CB_EstCBEnter(Sender: TObject);
    procedure Btn_CB_exEnter(Sender: TObject);
    procedure Btn_CB_ExplEnter(Sender: TObject);
    procedure Btn_CB_fexrEnter(Sender: TObject);
    procedure Btn_CB_NumEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_CB_EstCBClick(Sender: TObject);
    procedure Btn_CB_NumClick(Sender: TObject);
    procedure Btn_CB_AlfBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_CB: TForm_CB;
  voz:Variant;
  crt_Falainic:integer=0;

implementation

{$R *.dfm}

procedure TForm_CB.Btn_CB_AlfBClick(Sender: TObject);
begin
FCB_AB.showmodal;
end;

procedure TForm_CB.Btn_CB_AlfBEnter(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.Speak('Botão Alfabeto Braille',SVSFlagsAsync);
end;

procedure TForm_CB.Btn_CB_AlfBExit(Sender: TObject);
begin
voz.Pause;
end;

procedure TForm_CB.Btn_CB_EstCBClick(Sender: TObject);
begin
FCB_Estrutura.showmodal;
end;

procedure TForm_CB.Btn_CB_EstCBEnter(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
if crt_Falainic=0 then
begin
voz.Speak('Nova Tela Aberta, Tela Cela Braille',SVSFlagsAsync);
crt_Falainic:=1;
end;
voz.Speak('Botão Estrutura da Cela Braille',SVSFlagsAsync);
end;

procedure TForm_CB.Btn_CB_EstCBExit(Sender: TObject);
begin
voz.Pause;
end;

procedure TForm_CB.Btn_CB_exEnter(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.Speak('Botão Exercícios',SVSFlagsAsync);
end;

procedure TForm_CB.Btn_CB_exExit(Sender: TObject);
begin
voz.Pause;
end;

procedure TForm_CB.Btn_CB_ExplEnter(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.Speak('Botão Explicação da Tela',SVSFlagsAsync);
end;

procedure TForm_CB.Btn_CB_ExplExit(Sender: TObject);
begin
voz.Pause;
end;

procedure TForm_CB.Btn_CB_fexrClick(Sender: TObject);
begin
Form_CB.Close;
end;

procedure TForm_CB.Btn_CB_fexrEnter(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.Speak('Botão Fechar',SVSFlagsAsync);
end;

procedure TForm_CB.Btn_CB_fexrExit(Sender: TObject);
begin
voz.Pause;
end;

procedure TForm_CB.Btn_CB_NumClick(Sender: TObject);
begin
FCB_Numeros.Showmodal;
end;

procedure TForm_CB.Btn_CB_NumEnter(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.Speak('Botão Números',SVSFlagsAsync);
end;

procedure TForm_CB.Btn_CB_NumExit(Sender: TObject);
begin
voz.Pause;
end;

procedure TForm_CB.Btn_CB_SimEnter(Sender: TObject);
begin
voz:= CreateOLEObject('SAPI.SpVoice');
voz.Speak('Botão Sinais gráficos',SVSFlagsAsync);
end;

procedure TForm_CB.Btn_CB_SimExit(Sender: TObject);
begin
voz.Pause;
end;

procedure TForm_CB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
voz.pause;
end;

procedure TForm_CB.FormShow(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.Speak('Nova tela aberta, Tela Cela Braille',SVSFlagsAsync);
end;

end.
