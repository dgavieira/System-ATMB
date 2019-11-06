unit F_mub_SinDin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons,ComObj,SpeechLIB_TLB;

type
  TF_Mub_sinaisrep = class(TForm)
    Fhist_templat1: TImage;
    Fhist_template2: TImage;
    Lbl_title_hist: TLabel;
    ScBx_Hist: TScrollBox;
    Pn_hist_ovr: TPanel;
    Pn_hist_avnc: TPanel;
    Pn_hist_votr: TPanel;
    Pn_hist_ovrat: TPanel;
    Pn_hist_expl: TPanel;
    Pn_hist_fexr: TPanel;
    Lbl_pn_hist_ovrat: TLabel;
    Btn_hist_ovr: TBitBtn;
    Btn_hist_avnc: TBitBtn;
    Btn_hist_vltr: TBitBtn;
    Btn_hist_ovrat: TBitBtn;
    Btn_hist_expl: TBitBtn;
    Btn_hist_fexr: TBitBtn;
    Pn_hist_ex: TPanel;
    Btn_hist_ex: TButton;
    Pn_Tx1_Hist: TPanel;
    LBL_Tx1_hist: TLabel;
    LBL_Tx2_hist: TLabel;
    Pn_Tx2_hist: TPanel;
    Pn_Tx3_hist: TPanel;
    Lbl_Tx3_hist: TLabel;
    Pn_Tx4_hist: TPanel;
    lbl_tx4_hist: TLabel;
    Pn_Tx5_hist: TPanel;
    lbl_Tx5_hist: TLabel;
    Pn_Tx6_hist: TPanel;
    lbl_tx6_hist: TLabel;
    procedure Btn_hist_ovrEnter(Sender: TObject);
    procedure Btn_hist_ovrExit(Sender: TObject);
    procedure Btn_hist_avncEnter(Sender: TObject);
    procedure Btn_hist_exEnter(Sender: TObject);
    procedure Btn_hist_explEnter(Sender: TObject);
    procedure Btn_hist_fexrEnter(Sender: TObject);
    procedure Btn_hist_ovratEnter(Sender: TObject);
    procedure Btn_hist_vltrEnter(Sender: TObject);
    procedure Btn_hist_avncExit(Sender: TObject);
    procedure Btn_hist_exExit(Sender: TObject);
    procedure Btn_hist_explExit(Sender: TObject);
    procedure Btn_hist_fexrExit(Sender: TObject);
    procedure Btn_hist_ovratExit(Sender: TObject);
    procedure Btn_hist_vltrExit(Sender: TObject);
    procedure Btn_hist_fexrClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Btn_hist_avncClick(Sender: TObject);
    procedure Btn_hist_vltrClick(Sender: TObject);
    procedure Btn_hist_ovratClick(Sender: TObject);
    procedure Btn_hist_ovrClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Mub_sinaisrep: TF_Mub_sinaisrep;
  voz:Variant;
  crt_Falainic:integer =0;
  crt_textoatual:integer=1;
implementation

{$R *.dfm}

procedure TF_Mub_sinaisrep.Btn_hist_avncClick(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
crt_textoatual:= crt_textoatual+1;
if crt_textoatual>6 then
begin
crt_textoatual:=6;
voz.speak('Não existe testo posterior a este',SVSFlagsAsync);
end;
if crt_textoatual=2 then
begin
Pn_Tx1_hist.Visible:= false;
Pn_Tx2_hist.Visible:= true;
Pn_Tx3_hist.Visible:= false;
Pn_Tx4_hist.Visible:= false;
Pn_Tx5_hist.Visible:= false;
Pn_Tx6_hist.Visible:= false;
voz.speak(Lbl_tx2_hist.Caption,SVSFlagsAsync);
end;
if crt_textoatual=3 then
begin
Pn_Tx1_hist.Visible:= false;
Pn_Tx2_hist.Visible:= false;
Pn_Tx3_hist.Visible:= true;
Pn_Tx4_hist.Visible:= false;
Pn_Tx5_hist.Visible:= false;
Pn_Tx6_hist.Visible:= false;
voz.speak(Lbl_tx3_hist.Caption,SVSFlagsAsync);
end;
if crt_textoatual=4 then
begin
Pn_Tx1_hist.Visible:= false;
Pn_Tx2_hist.Visible:= false;
Pn_Tx3_hist.Visible:= false;
Pn_Tx4_hist.Visible:= true;
Pn_Tx5_hist.Visible:= false;
Pn_Tx6_hist.Visible:= false;
voz.speak(Lbl_tx4_hist.Caption,SVSFlagsAsync);
end;
if crt_textoatual=5 then
begin
Pn_Tx1_hist.Visible:= false;
Pn_Tx2_hist.Visible:= false;
Pn_Tx3_hist.Visible:= false;
Pn_Tx4_hist.Visible:= false;
Pn_Tx5_hist.Visible:= true;
Pn_Tx6_hist.Visible:= false;
voz.speak(Lbl_tx5_hist.Caption,SVSFlagsAsync);
end;
if crt_textoatual=6 then
begin
Pn_Tx1_hist.Visible:= false;
Pn_Tx2_hist.Visible:= false;
Pn_Tx3_hist.Visible:= false;
Pn_Tx4_hist.Visible:= false;
Pn_Tx5_hist.Visible:= false;
Pn_Tx6_hist.Visible:= true;
voz.speak(Lbl_tx6_hist.Caption,SVSFlagsAsync);
end;
end;

procedure TF_Mub_sinaisrep.Btn_hist_avncEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.Speak('Botão Avançar Texto',SVSFlagsAsync);
Pn_hist_avnc.Color:= clBlack;
Pn_hist_avnc.Font.Color:= clWhite;
end;

procedure TF_Mub_sinaisrep.Btn_hist_avncExit(Sender: TObject);
begin
voz.Pause;
Pn_hist_avnc.Color:=clWhite;
Pn_hist_avnc.Font.Color:=clBlack;
end;

procedure TF_Mub_sinaisrep.Btn_hist_exEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.Speak('Botão Exercícios',SVSFlagsAsync);
Pn_hist_ex.Color:=clBlack;
Pn_hist_ex.Font.Color:=clWhite;
end;

procedure TF_Mub_sinaisrep.Btn_hist_exExit(Sender: TObject);
begin
voz.Pause;
Pn_hist_ex.Color:=clWhite;
Pn_hist_ex.Font.Color:=clBlack;
end;

procedure TF_Mub_sinaisrep.Btn_hist_explEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.Speak('Botão Explicação da tela',SVSFlagsAsync);
Pn_hist_expl.Color:=clBlack;
Pn_hist_expl.Font.Color:=clWhite;
end;

procedure TF_Mub_sinaisrep.Btn_hist_explExit(Sender: TObject);
begin
voz.Pause;
Pn_hist_expl.Color:=clWhite;
Pn_hist_expl.Font.Color:=clBlack;
end;

procedure TF_Mub_sinaisrep.Btn_hist_fexrClick(Sender: TObject);
begin
F_Mub_sinaisrep.Close;
end;

procedure TF_Mub_sinaisrep.Btn_hist_fexrEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.Speak('Botão Fechar',SVSFlagsAsync);
Pn_hist_fexr.Color:=clBlack;
Pn_hist_fexr.Font.Color:=clWhite;
end;

procedure TF_Mub_sinaisrep.Btn_hist_fexrExit(Sender: TObject);
begin
voz.Pause;
Pn_hist_fexr.Color:=clWhite;
Pn_hist_fexr.Font.Color:=clBlack;
end;

procedure TF_Mub_sinaisrep.Btn_hist_ovratClick(Sender: TObject);
begin
voz:=createOLEObject('SAPI.SpVoice');
if crt_textoatual=2 then
begin
Pn_Tx1_hist.Visible:= false;
Pn_Tx2_hist.Visible:= true;
Pn_Tx3_hist.Visible:= false;
Pn_Tx4_hist.Visible:= false;
Pn_Tx5_hist.Visible:= false;
Pn_Tx6_hist.Visible:= false;
voz.speak(Lbl_tx2_hist.Caption,SVSFlagsAsync);
end;
if crt_textoatual=3 then
begin
Pn_Tx1_hist.Visible:= false;
Pn_Tx2_hist.Visible:= false;
Pn_Tx3_hist.Visible:= true;
Pn_Tx4_hist.Visible:= false;
Pn_Tx5_hist.Visible:= false;
Pn_Tx6_hist.Visible:= false;
voz.speak(Lbl_tx3_hist.Caption,SVSFlagsAsync);
end;
if crt_textoatual=4 then
begin
Pn_Tx1_hist.Visible:= false;
Pn_Tx2_hist.Visible:= false;
Pn_Tx3_hist.Visible:= false;
Pn_Tx4_hist.Visible:= true;
Pn_Tx5_hist.Visible:= false;
Pn_Tx6_hist.Visible:= false;
voz.speak(Lbl_tx4_hist.Caption,SVSFlagsAsync);
end;
if crt_textoatual=5 then
begin
Pn_Tx1_hist.Visible:= false;
Pn_Tx2_hist.Visible:= false;
Pn_Tx3_hist.Visible:= false;
Pn_Tx4_hist.Visible:= false;
Pn_Tx5_hist.Visible:= true;
Pn_Tx6_hist.Visible:= false;
voz.speak(Lbl_tx5_hist.Caption,SVSFlagsAsync);
end;
if crt_textoatual=6 then
begin
Pn_Tx1_hist.Visible:= false;
Pn_Tx2_hist.Visible:= false;
Pn_Tx3_hist.Visible:= false;
Pn_Tx4_hist.Visible:= false;
Pn_Tx5_hist.Visible:= false;
Pn_Tx6_hist.Visible:= true;
voz.speak(Lbl_tx6_hist.Caption,SVSFlagsAsync);
end;
if crt_textoatual=1 then
begin
Pn_Tx1_hist.Visible:= true;
Pn_Tx2_hist.Visible:= false;
Pn_Tx3_hist.Visible:= false;
Pn_Tx4_hist.Visible:= false;
Pn_Tx5_hist.Visible:= false;
Pn_Tx6_hist.Visible:= false;
voz.speak(Lbl_tx1_hist.Caption,SVSFlagsAsync);
end;
end;

procedure TF_Mub_sinaisrep.Btn_hist_ovratEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.Speak('Botão Ouvir Texto Atual',SVSFlagsAsync);
Pn_hist_ovrat.Color:=clBlack;
Pn_hist_ovrat.Font.Color:=clWhite;
end;

procedure TF_Mub_sinaisrep.Btn_hist_ovratExit(Sender: TObject);
begin
voz.Pause;
Pn_hist_ovrat.Color:=clWhite;
Pn_hist_ovrat.Font.Color:=clBlack;
end;

procedure TF_Mub_sinaisrep.Btn_hist_ovrClick(Sender: TObject);
begin
Btn_hist_avnc.Enabled:=true;
Btn_hist_vltr.Enabled:=true;
Btn_hist_ovrat.Enabled:=true;
Btn_hist_ex.Enabled:=true;
voz:=createOLEObject('SAPI.SpVoice');
Pn_Tx1_hist.Visible:=true;
voz.speak(Lbl_tx1_hist.Caption,SVSFlagsAsync);
end;

procedure TF_Mub_sinaisrep.Btn_hist_ovrEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
if crt_Falainic=0 then
begin
voz.Speak('Nova Tela Aberta, Histórico da Musicografia Braille',SVSFlagsAsync);
crt_Falainic:=1;
end;
voz.Speak('Botão Ouvir',SVSFlagsAsync);
Pn_hist_ovr.Color:=clBlack;
Pn_hist_ovr.Font.Color:=clWhite;
end;

procedure TF_Mub_sinaisrep.Btn_hist_ovrExit(Sender: TObject);
begin
voz.Pause;
Pn_hist_ovr.Color:=clWhite;
Pn_hist_ovr.Font.Color:=clBlack;
end;

procedure TF_Mub_sinaisrep.Btn_hist_vltrClick(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
crt_textoatual:= crt_textoatual-1;
if crt_textoatual=2 then
begin
Pn_Tx1_hist.Visible:= false;
Pn_Tx2_hist.Visible:= true;
Pn_Tx3_hist.Visible:= false;
Pn_Tx4_hist.Visible:= false;
Pn_Tx5_hist.Visible:= false;
Pn_Tx6_hist.Visible:= false;
voz.speak(Lbl_tx2_hist.Caption,SVSFlagsAsync);
end;
if crt_textoatual=3 then
begin
Pn_Tx1_hist.Visible:= false;
Pn_Tx2_hist.Visible:= false;
Pn_Tx3_hist.Visible:= true;
Pn_Tx4_hist.Visible:= false;
Pn_Tx5_hist.Visible:= false;
Pn_Tx6_hist.Visible:= false;
voz.speak(Lbl_tx3_hist.Caption,SVSFlagsAsync);
end;
if crt_textoatual=4 then
begin
Pn_Tx1_hist.Visible:= false;
Pn_Tx2_hist.Visible:= false;
Pn_Tx3_hist.Visible:= false;
Pn_Tx4_hist.Visible:= true;
Pn_Tx5_hist.Visible:= false;
Pn_Tx6_hist.Visible:= false;
voz.speak(Lbl_tx4_hist.Caption,SVSFlagsAsync);
end;
if crt_textoatual=5 then
begin
Pn_Tx1_hist.Visible:= false;
Pn_Tx2_hist.Visible:= false;
Pn_Tx3_hist.Visible:= false;
Pn_Tx4_hist.Visible:= false;
Pn_Tx5_hist.Visible:= true;
Pn_Tx6_hist.Visible:= false;
voz.speak(Lbl_tx5_hist.Caption,SVSFlagsAsync);
end;
if crt_textoatual=1 then
begin
Pn_Tx1_hist.Visible:= true;
Pn_Tx2_hist.Visible:= false;
Pn_Tx3_hist.Visible:= false;
Pn_Tx4_hist.Visible:= false;
Pn_Tx5_hist.Visible:= false;
Pn_Tx6_hist.Visible:= false;
voz.speak(Lbl_tx1_hist.Caption,SVSFlagsAsync);
end;
if crt_textoatual<1 then
begin
crt_textoatual:=1;
voz.speak('Não existe testo anterior a este',SVSFlagsAsync);
end;
end;

procedure TF_Mub_sinaisrep.Btn_hist_vltrEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.Speak('Botão Voltar texto',SVSFlagsAsync);
Pn_hist_votr.Color:=clBlack;
Pn_hist_votr.Font.Color:=clWhite;
end;

procedure TF_Mub_sinaisrep.Btn_hist_vltrExit(Sender: TObject);
begin
voz.Pause;
Pn_hist_Votr.Color:=clWhite;
Pn_hist_votr.Font.Color:=clBlack;
end;

procedure TF_Mub_sinaisrep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
crt_falainic:=0;
end;

procedure TF_Mub_sinaisrep.FormShow(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.Speak('Nova Tela aberta, Histórico da Musicografia Braille',SVSFlagsAsync);
end;

end.
