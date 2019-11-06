unit FMusicografiaBraille;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, Buttons, speechlib_TLB, ComObj,F_mub_acd
  , Form_mub_art, F_Mub_agrval, F_mub_and, F_mub_comp, F_Mub_notmus, F_mub_orn
  , F_mub_qui, F_mub_sindin, F_mub_sinrep, F_mub_TPVF;

type
  TF_MusB = class(TForm)
    Image1: TImage;
    btn_notemus: TBitBtn;
    btn_comp: TBitBtn;
    btn_artic: TBitBtn;
    btn_sinrep: TBitBtn;
    btn_sindin: TBitBtn;
    btn_andm: TBitBtn;
    btn_quia: TBitBtn;
    btn_acd: TBitBtn;
    btn_fxr: TBitBtn;
    btn_agrval: TBitBtn;
    btn_tclpia: TBitBtn;
    btn_orna: TBitBtn;
    Label1: TLabel;
    procedure btn_notemusEnter(Sender: TObject);
    procedure btn_compEnter(Sender: TObject);
    procedure btn_articEnter(Sender: TObject);
    procedure btn_sinrepEnter(Sender: TObject);
    procedure btn_sindinEnter(Sender: TObject);
    procedure btn_andmEnter(Sender: TObject);
    procedure btn_quiaEnter(Sender: TObject);
    procedure btn_acdEnter(Sender: TObject);
    procedure btn_fxrEnter(Sender: TObject);
    procedure btn_agrvalEnter(Sender: TObject);
    procedure btn_tclpiaEnter(Sender: TObject);
    procedure btn_ornaEnter(Sender: TObject);
    procedure btn_notemusExit(Sender: TObject);
    procedure btn_compExit(Sender: TObject);
    procedure btn_articExit(Sender: TObject);
    procedure btn_sinrepExit(Sender: TObject);
    procedure btn_sindinExit(Sender: TObject);
    procedure btn_andmExit(Sender: TObject);
    procedure btn_quiaExit(Sender: TObject);
    procedure btn_acdExit(Sender: TObject);
    procedure btn_fxrExit(Sender: TObject);
    procedure btn_agrvalExit(Sender: TObject);
    procedure btn_tclpiaExit(Sender: TObject);
    procedure btn_ornaExit(Sender: TObject);
    procedure btn_acdClick(Sender: TObject);
    procedure btn_articClick(Sender: TObject);
    procedure btn_agrvalClick(Sender: TObject);
    procedure btn_andmClick(Sender: TObject);
    procedure btn_compClick(Sender: TObject);
    procedure btn_notemusClick(Sender: TObject);
    procedure btn_ornaClick(Sender: TObject);
    procedure btn_quiaClick(Sender: TObject);
    procedure btn_sindinClick(Sender: TObject);
    procedure btn_sinrepClick(Sender: TObject);
    procedure btn_tclpiaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_MusB: TF_MusB;
  voz : variant;
implementation

{$R *.dfm}

procedure TF_MusB.btn_acdClick(Sender: TObject);
begin
F_musb_acdnt.ShowModal;
end;

procedure TF_MusB.btn_acdEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum acidentes');
end;

procedure TF_MusB.btn_acdExit(Sender: TObject);
begin
voz.pause;
end;

procedure TF_MusB.btn_agrvalClick(Sender: TObject);
begin
F_musb_Agrpvalrs.ShowModal;
end;

procedure TF_MusB.btn_agrvalEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum agrupamento de valores');
end;

procedure TF_MusB.btn_agrvalExit(Sender: TObject);
begin
voz.pause;
end;

procedure TF_MusB.btn_andmClick(Sender: TObject);
begin
F_musb_And.ShowModal;
end;

procedure TF_MusB.btn_andmEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum andamentos');
end;

procedure TF_MusB.btn_andmExit(Sender: TObject);
begin
voz.pause;
end;

procedure TF_MusB.btn_articClick(Sender: TObject);
begin
F_Mub_Art.ShowModal;
end;

procedure TF_MusB.btn_articEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum articulaçoes');
end;

procedure TF_MusB.btn_articExit(Sender: TObject);
begin
voz.pause;
end;

procedure TF_MusB.btn_compClick(Sender: TObject);
begin
F_musb_compas.ShowModal;
end;

procedure TF_MusB.btn_compEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum Compassos');
end;

procedure TF_MusB.btn_compExit(Sender: TObject);
begin
voz.pause;
end;

procedure TF_MusB.btn_fxrEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum intervalos e acordes');
end;

procedure TF_MusB.btn_fxrExit(Sender: TObject);
begin
voz.pause;
end;

procedure TF_MusB.btn_notemusClick(Sender: TObject);
begin
F_mub_Notacao.ShowModal;
end;

procedure TF_MusB.btn_notemusEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum notação musical');
end;



procedure TF_MusB.btn_notemusExit(Sender: TObject);
begin
voz.pause;
end;

procedure TF_MusB.btn_ornaClick(Sender: TObject);
begin
F_mub_ornamenta.ShowModal;
end;

procedure TF_MusB.btn_ornaEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum ornamentos');
end;

procedure TF_MusB.btn_ornaExit(Sender: TObject);
begin
voz.pause;
end;

procedure TF_MusB.btn_quiaClick(Sender: TObject);
begin
F_mub_quialter.ShowModal;
end;

procedure TF_MusB.btn_quiaEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum quiáltera');
end;

procedure TF_MusB.btn_quiaExit(Sender: TObject);
begin
voz.pause;
end;

procedure TF_MusB.btn_sindinClick(Sender: TObject);
begin
F_Mub_sinaisrep.ShowModal;
end;

procedure TF_MusB.btn_sindinEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum sinais de dinâmica');
end;

procedure TF_MusB.btn_sindinExit(Sender: TObject);
begin
voz.pause;
end;

procedure TF_MusB.btn_sinrepClick(Sender: TObject);
begin
F_Mub_SinRepet.ShowModal;
end;

procedure TF_MusB.btn_sinrepEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum sinais de repetição');
end;

procedure TF_MusB.btn_sinrepExit(Sender: TObject);
begin
voz.pause;
end;

procedure TF_MusB.btn_tclpiaClick(Sender: TObject);
begin
Form_teclado.ShowModal;
end;

procedure TF_MusB.btn_tclpiaEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum para piano, teclado, violão e flauta');
end;

procedure TF_MusB.btn_tclpiaExit(Sender: TObject);
begin
voz.pause;
end;

end.
