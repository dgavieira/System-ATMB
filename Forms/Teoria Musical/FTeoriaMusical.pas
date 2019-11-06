unit FTeoriaMusical;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, Buttons,speechlib_TLB, ComObj,F_Tm_andamento
  ,F_TM_Alt, F_Tm_Artic, F_tm_enh, F_Tm_musica, F_tm_Notmus,f_tm_sindin,
   f_TM_quialtera, F_tm_compasso,F_tm_sincon, F_tm_sinrep, f_tm_tons,F_tm_scrodia ;

type
  TForm_TM = class(TForm)
    Img_templ_FTm: TImage;
    Lbl_titl_FTm: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Pn_btn_compass: TPanel;
    Panel4: TPanel;
    btn_mus: TBitBtn;
    btn_notmusdur: TBitBtn;
    btn_cmp: TBitBtn;
    Btn_art: TBitBtn;
    btn_srep: TBitBtn;
    btn_sdin: TBitBtn;
    btn_and: TBitBtn;
    btn_sinecontr: TBitBtn;
    btn_qltr: TBitBtn;
    btn_tons: TBitBtn;
    btn_alte: TBitBtn;
    btn_semiton: TBitBtn;
    btn_enh: TBitBtn;
    btn_expl: TBitBtn;
    btn_fxr: TBitBtn;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    procedure btn_alteEnter(Sender: TObject);
    procedure btn_andEnter(Sender: TObject);
    procedure Btn_artClick(Sender: TObject);
    procedure btn_enhEnter(Sender: TObject);
    procedure btn_explEnter(Sender: TObject);
    procedure btn_fxrEnter(Sender: TObject);
    procedure btn_musEnter(Sender: TObject);
    procedure btn_notmusdurEnter(Sender: TObject);
    procedure btn_qltrEnter(Sender: TObject);
    procedure btn_sdinEnter(Sender: TObject);
    procedure btn_semitonEnter(Sender: TObject);
    procedure btn_sinecontrEnter(Sender: TObject);
    procedure btn_srepEnter(Sender: TObject);
    procedure btn_tonsEnter(Sender: TObject);
    procedure btn_alteExit(Sender: TObject);
    procedure btn_andExit(Sender: TObject);
    procedure Btn_artExit(Sender: TObject);
    procedure btn_cmpExit(Sender: TObject);
    procedure btn_enhExit(Sender: TObject);
    procedure btn_explExit(Sender: TObject);
    procedure btn_fxrExit(Sender: TObject);
    procedure btn_musExit(Sender: TObject);
    procedure btn_notmusdurExit(Sender: TObject);
    procedure btn_qltrExit(Sender: TObject);
    procedure btn_sdinExit(Sender: TObject);
    procedure btn_semitonExit(Sender: TObject);
    procedure btn_sinecontrExit(Sender: TObject);
    procedure btn_srepExit(Sender: TObject);
    procedure btn_tonsExit(Sender: TObject);
    procedure btn_cmpEnter(Sender: TObject);
    procedure Btn_artEnter(Sender: TObject);
    procedure btn_andClick(Sender: TObject);
    procedure btn_alteClick(Sender: TObject);
    procedure btn_enhClick(Sender: TObject);
    procedure btn_musClick(Sender: TObject);
    procedure btn_notmusdurClick(Sender: TObject);
    procedure btn_qltrClick(Sender: TObject);
    procedure btn_sdinClick(Sender: TObject);
    procedure btn_cmpClick(Sender: TObject);
    procedure btn_semitonClick(Sender: TObject);
    procedure btn_sinecontrClick(Sender: TObject);
    procedure btn_srepClick(Sender: TObject);
    procedure btn_tonsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_TM: TForm_TM;
  voz : variant;
implementation

{$R *.dfm}

procedure TForm_TM.btn_alteClick(Sender: TObject);
begin
F_TM_Acidentes.ShowModal;
end;

procedure TForm_TM.btn_alteEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum articulações');
end;

procedure TForm_TM.btn_alteExit(Sender: TObject);
begin
voz.pause;
end;

procedure TForm_TM.btn_andClick(Sender: TObject);
begin
F_TM_and.ShowModal;
end;

procedure TForm_TM.btn_andEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum andamento');
end;

procedure TForm_TM.btn_andExit(Sender: TObject);
begin
voz.pause;
end;

procedure TForm_TM.Btn_artClick(Sender: TObject);
begin
f_Tm_articulacoes.ShowModal;
end;

procedure TForm_TM.Btn_artEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum articulaçaum');
end;

procedure TForm_TM.Btn_artExit(Sender: TObject);
begin
voz.pause;
end;

procedure TForm_TM.btn_cmpClick(Sender: TObject);
begin
F_tm_compass.showmodal;
end;

procedure TForm_TM.btn_cmpEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum compasso');
end;

procedure TForm_TM.btn_cmpExit(Sender: TObject);
begin
voz.pause;
end;

procedure TForm_TM.btn_enhClick(Sender: TObject);
begin
f_tm_enhar.showmodal;
end;

procedure TForm_TM.btn_enhEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum enharmônia');
end;

procedure TForm_TM.btn_enhExit(Sender: TObject);
begin
voz.pause;
end;

procedure TForm_TM.btn_explEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum explicação de tela');
end;

procedure TForm_TM.btn_explExit(Sender: TObject);
begin
voz.pause;
end;

procedure TForm_TM.btn_fxrEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum fexar tela');
end;

procedure TForm_TM.btn_fxrExit(Sender: TObject);
begin
voz.pause;
end;

procedure TForm_TM.btn_musClick(Sender: TObject);
begin
f_tm_music.ShowModal;
end;

procedure TForm_TM.btn_musEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum música');
end;

procedure TForm_TM.btn_musExit(Sender: TObject);
begin
voz.pause;
end;

procedure TForm_TM.btn_notmusdurClick(Sender: TObject);
begin
F_tm_notmusic.showmodal;
end;

procedure TForm_TM.btn_notmusdurEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum notação musical');
end;

procedure TForm_TM.btn_notmusdurExit(Sender: TObject);
begin
voz.pause;
end;

procedure TForm_TM.btn_qltrClick(Sender: TObject);
begin
F_TM_Quialter.ShowModal;
end;

procedure TForm_TM.btn_qltrEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum quialtera');
end;

procedure TForm_TM.btn_qltrExit(Sender: TObject);
begin
voz.pause;
end;

procedure TForm_TM.btn_sdinClick(Sender: TObject);
begin
f_tm_sindinam.showmodal;
end;

procedure TForm_TM.btn_sdinEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum sinais de repetição');
end;

procedure TForm_TM.btn_sdinExit(Sender: TObject);
begin
voz.pause;
end;

procedure TForm_TM.btn_semitonClick(Sender: TObject);
begin
F_Tm_Semitoncro.showmodal;
end;

procedure TForm_TM.btn_semitonEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum semitom');
end;

procedure TForm_TM.btn_semitonExit(Sender: TObject);
begin
voz.pause;
end;

procedure TForm_TM.btn_sinecontrClick(Sender: TObject);
begin
f_Tm_Sincontr.ShowModal;
end;

procedure TForm_TM.btn_sinecontrEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum síncope e contratempo');
end;

procedure TForm_TM.btn_sinecontrExit(Sender: TObject);
begin
voz.pause;
end;

procedure TForm_TM.btn_srepClick(Sender: TObject);
begin
F_Tm_SRep.ShowModal;
end;

procedure TForm_TM.btn_srepEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum sinais de repetição');
end;

procedure TForm_TM.btn_srepExit(Sender: TObject);
begin
voz.pause;
end;

procedure TForm_TM.btn_tonsClick(Sender: TObject);
begin
F_TM_TSemit.ShowModal;
end;

procedure TForm_TM.btn_tonsEnter(Sender: TObject);
begin
voz := CreateOLEObject('SAPi.SpVoice');
voz.speak('Botaum tons');
end;

procedure TForm_TM.btn_tonsExit(Sender: TObject);
begin
voz.pause;
end;

end.
