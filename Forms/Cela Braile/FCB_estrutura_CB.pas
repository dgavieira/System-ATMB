unit FCB_estrutura_CB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, pngimage, Buttons,ComObj,
  SpeechLIB_TLB;

type
  TFCB_Estrutura = class(TForm)
    Template_CB: TImage;
    lbl_title_estr_CB: TLabel;
    Pn_amstTX_CB_estr: TPanel;
    Pn_amstImg_est_CB: TPanel;
    Pn_Tx1_CD_estr: TPanel;
    Lbl_Tx1_CB_estr: TLabel;
    Pn_tx2_CB_estr: TPanel;
    Lbl_Tx2_CB_estr: TLabel;
    Pn_Tx3_CB_estr: TPanel;
    lbl_tx3_CB_estr: TLabel;
    Pn_Tx4_CB_estr: TPanel;
    lbl_tx4_CB_estr: TLabel;
    Pn_tx5_CB_estr: TPanel;
    Lbl_Tx5_CB_estr: TLabel;
    Im_CB_estr_C1: TImage;
    Im_CB_estr_C2: TImage;
    Pn_Btn_ovr_CB_estr: TPanel;
    Pn_BTN_avnc_CB_estr: TPanel;
    Pn_btn_vtr_CB_estr: TPanel;
    Pn_btn_ovrat_CB_estr: TPanel;
    Pn_btn_ex_CB_estr: TPanel;
    Pn_btn_expl_CB_estr: TPanel;
    Pn_btn_fxr_CB_estr: TPanel;
    btn_ovr_CB_estr: TBitBtn;
    Btn_avnc_CB_estr: TBitBtn;
    btn_vltr_CB_estr: TBitBtn;
    btn_ovrat_CB_estr: TBitBtn;
    btn_ex_CB_estr: TBitBtn;
    btn_expli_CB_estr: TBitBtn;
    Btn_fxr_CB_estr: TBitBtn;
    procedure FormSrtaahow(Sender: TObject);
    procedure Btn_avnc_CB_estrEnter(Sender: TObject);
    procedure btn_ex_CB_estrEnter(Sender: TObject);
    procedure btn_expli_CB_estrEnter(Sender: TObject);
    procedure Btn_fxr_CB_estrEnter(Sender: TObject);
    procedure btn_ovr_CB_estrEnter(Sender: TObject);
    procedure btn_ovrat_CB_estrEnter(Sender: TObject);
    procedure btn_vltr_CB_estrEnter(Sender: TObject);
    procedure Btn_avnc_CB_estrExit(Sender: TObject);
    procedure btn_ex_CB_estrExit(Sender: TObject);
    procedure btn_expli_CB_estrExit(Sender: TObject);
    procedure btn_ovr_CB_estrExit(Sender: TObject);
    procedure Btn_fxr_CB_estrExit(Sender: TObject);
    procedure btn_ovrat_CB_estrExit(Sender: TObject);
    procedure btn_vltr_CB_estrExit(Sender: TObject);
    procedure Btn_fxr_CB_estrClick(Sender: TObject);
    procedure Btn_avnc_CB_estrClick(Sender: TObject);
    procedure btn_vltr_CB_estrClick(Sender: TObject);
    procedure btn_ovrat_CB_estrClick(Sender: TObject);
    procedure btn_ovr_CB_estrClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCB_Estrutura: TFCB_Estrutura;
  voz:variant;
  crt_fala:integer=0;
implementation

{$R *.dfm}

procedure TFCB_Estrutura.Btn_avnc_CB_estrClick(Sender: TObject);
begin
crt_fala:=crt_fala+1;
if crt_fala=1 then
begin
Pn_Tx2_CB_estr.Visible:=true;
Pn_Tx1_Cd_estr.Visible:=false;
Pn_Tx3_CB_estr.Visible:=false;
Pn_Tx4_CB_estr.Visible:=false;
Pn_Tx5_CB_estr.Visible:=false;
voz.speak(Lbl_tx2_CB_estr.Caption,SVSFlagsAsync);
end;
if crt_fala=2 then
begin
Pn_Tx2_CB_estr.Visible:=false;
Pn_Tx1_Cd_estr.Visible:=false;
Pn_Tx3_CB_estr.Visible:=true;
Pn_Tx4_CB_estr.Visible:=false;
Pn_Tx5_CB_estr.Visible:=false;
voz.speak(Lbl_tx3_CB_estr.Caption,SVSFlagsAsync);
end;
if crt_fala=3 then
begin
Pn_Tx2_CB_estr.Visible:=false;
Pn_Tx1_Cd_estr.Visible:=false;
Pn_Tx3_CB_estr.Visible:=false;
Pn_Tx4_CB_estr.Visible:=true;
Pn_Tx5_CB_estr.Visible:=false;
voz.speak(Lbl_tx4_CB_estr.Caption,SVSFlagsAsync);
Im_CB_estr_C1.Picture.LoadFromFile('G:\System ATMB - Software Oficial\App\Imagens\Celas Braille\Letra G.PNG');
end;
if crt_fala=4 then
begin
Pn_tx2_CB_estr.Visible:=false;
Pn_Tx1_Cd_estr.Visible:=false;
Pn_Tx3_CB_estr.Visible:=false;
Pn_Tx4_CB_estr.Visible:=false;
Pn_Tx5_CB_estr.Visible:=true;
voz.speak(Lbl_tx5_CB_estr.Caption,SVSFlagsAsync);
end;
end;

procedure TFCB_Estrutura.Btn_avnc_CB_estrEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.speak('Botão Avançar',SVSFLagsAsync);
end;

procedure TFCB_Estrutura.Btn_avnc_CB_estrExit(Sender: TObject);
begin
voz.pause;
end;

procedure TFCB_Estrutura.btn_expli_CB_estrEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.speak('Botão Explicaação da tela',SVSFLagsAsync);
end;

procedure TFCB_Estrutura.btn_expli_CB_estrExit(Sender: TObject);
begin
voz.pause;
end;

procedure TFCB_Estrutura.btn_ex_CB_estrEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.speak('Botão Exercícios',SVSFLagsAsync);
end;

procedure TFCB_Estrutura.btn_ex_CB_estrExit(Sender: TObject);
begin
voz.pause;
end;

procedure TFCB_Estrutura.Btn_fxr_CB_estrClick(Sender: TObject);
begin
FCB_estrutura.Close;
end;

procedure TFCB_Estrutura.Btn_fxr_CB_estrEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.speak('Botão Fechar',SVSFLagsAsync);
end;

procedure TFCB_Estrutura.Btn_fxr_CB_estrExit(Sender: TObject);
begin
voz.pause;
end;

procedure TFCB_Estrutura.btn_ovrat_CB_estrClick(Sender: TObject);
begin
if crt_fala=1 then
begin
Pn_Tx2_CB_estr.Visible:=true;
Pn_Tx1_Cd_estr.Visible:=false;
Pn_Tx3_CB_estr.Visible:=false;
Pn_Tx4_CB_estr.Visible:=false;
Pn_Tx5_CB_estr.Visible:=false;
voz.speak(Lbl_tx2_CB_estr.Caption,SVSFlagsAsync);
end;
if crt_fala=2 then
begin
Pn_Tx2_CB_estr.Visible:=false;
Pn_Tx1_Cd_estr.Visible:=false;
Pn_Tx3_CB_estr.Visible:=true;
Pn_Tx4_CB_estr.Visible:=false;
Pn_Tx5_CB_estr.Visible:=false;
voz.speak(Lbl_tx3_CB_estr.Caption,SVSFlagsAsync);
end;
if crt_fala=3 then
begin
Pn_Tx2_CB_estr.Visible:=false;
Pn_Tx1_Cd_estr.Visible:=false;
Pn_Tx3_CB_estr.Visible:=false;
Pn_Tx4_CB_estr.Visible:=true;
Pn_Tx5_CB_estr.Visible:=false;
voz.speak(Lbl_tx4_CB_estr.Caption,SVSFlagsAsync);
end;
if crt_fala=0 then
begin
Pn_Tx2_CB_estr.Visible:=false;
Pn_Tx1_Cd_estr.Visible:=true;
Pn_Tx3_CB_estr.Visible:=false;
Pn_Tx4_CB_estr.Visible:=false;
Pn_Tx5_CB_estr.Visible:=false;
voz.speak(Lbl_tx1_CB_estr.Caption,SVSFlagsAsync);
end;
if crt_fala=4 then
begin
Pn_Tx2_CB_estr.Visible:=false;
Pn_Tx1_Cd_estr.Visible:=false;
Pn_Tx3_CB_estr.Visible:=false;
Pn_Tx4_CB_estr.Visible:=false;
Pn_Tx5_CB_estr.Visible:=true;
voz.speak(Lbl_tx5_CB_estr.Caption,SVSFlagsAsync);
end;
end;

procedure TFCB_Estrutura.btn_ovrat_CB_estrEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.speak('Botão Ouvir Texto Atual',SVSFLagsAsync);
end;

procedure TFCB_Estrutura.btn_ovrat_CB_estrExit(Sender: TObject);
begin
voz.pause;
end;

procedure TFCB_Estrutura.btn_ovr_CB_estrClick(Sender: TObject);
begin
voz:=createOLEObject('SAPI.SpVoice');
Pn_Tx1_CD_estr.Visible:=true;
voz.speak(Lbl_tx1_CB_estr.Caption,SVSFlagsAsync);
end;

procedure TFCB_Estrutura.btn_ovr_CB_estrEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.speak('Botão Ouvir',SVSFLagsAsync);
end;

procedure TFCB_Estrutura.btn_ovr_CB_estrExit(Sender: TObject);
begin
voz.pause;
end;

procedure TFCB_Estrutura.btn_vltr_CB_estrClick(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
crt_fala:=crt_fala-1;
if crt_fala=1 then
begin
Pn_Tx2_CB_estr.Visible:=true;
Pn_Tx1_Cd_estr.Visible:=false;
Pn_Tx3_CB_estr.Visible:=false;
Pn_Tx4_CB_estr.Visible:=false;
Pn_Tx5_CB_estr.Visible:=false;
voz.speak(Lbl_tx2_CB_estr.Caption,SVSFlagsAsync);
end;
if crt_fala=2 then
begin
Pn_Tx2_CB_estr.Visible:=false;
Pn_Tx1_Cd_estr.Visible:=false;
Pn_Tx3_CB_estr.Visible:=true;
Pn_Tx4_CB_estr.Visible:=false;
Pn_Tx5_CB_estr.Visible:=false;
voz.speak(Lbl_tx3_CB_estr.Caption,SVSFlagsAsync);
end;
if crt_fala=3 then
begin
Pn_Tx2_CB_estr.Visible:=false;
Pn_Tx1_Cd_estr.Visible:=false;
Pn_Tx3_CB_estr.Visible:=false;
Pn_Tx4_CB_estr.Visible:=true;
Pn_Tx5_CB_estr.Visible:=false;
voz.speak(Lbl_tx4_CB_estr.Caption,SVSFlagsAsync);
end;
if crt_fala=0 then
begin
Pn_Tx2_CB_estr.Visible:=false;
Pn_Tx1_Cd_estr.Visible:=true;
Pn_Tx3_CB_estr.Visible:=false;
Pn_Tx4_CB_estr.Visible:=false;
Pn_Tx5_CB_estr.Visible:=false;
voz.speak(Lbl_tx1_CB_estr.Caption,SVSFlagsAsync);
end;
end;

procedure TFCB_Estrutura.btn_vltr_CB_estrEnter(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.speak('Botão Voltar',SVSFLagsAsync);
end;

procedure TFCB_Estrutura.btn_vltr_CB_estrExit(Sender: TObject);
begin
voz.pause;
end;

procedure TFCB_Estrutura.FormSrtaahow(Sender: TObject);
begin
voz:=CreateOLEObject('SAPI.SpVoice');
voz.speak('Nova Tela Aberta, Estrutura da Cela Braille');
end;

end.
