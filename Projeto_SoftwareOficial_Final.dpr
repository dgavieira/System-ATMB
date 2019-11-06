program Projeto_SoftwareOficial_Final;

uses
  Forms,
  Fprincipal in 'Forms\Fprincipal.pas' {Form_Principal},
  F_Tm_Tons in 'Forms\Teoria Musical\F_Tm_Tons.pas' {F_TM_TSemit},
  F_Tm_Alt in 'Forms\Teoria Musical\F_Tm_Alt.pas' {F_TM_Acidentes},
  F_TM_andamento in 'Forms\Teoria Musical\F_TM_andamento.pas' {FhistoricoMb},
  F_Tm_Artic in 'Forms\Teoria Musical\F_Tm_Artic.pas' {F_TM_Articulações},
  F_TM_compasso in 'Forms\Teoria Musical\F_TM_compasso.pas' {F_tm_compass},
  F_Tm_Enh in 'Forms\Teoria Musical\F_Tm_Enh.pas' {f_TM_Enhar},
  F_TM_musica in 'Forms\Teoria Musical\F_TM_musica.pas' {f_Tm_music},
  F_Tm_Notmus in 'Forms\Teoria Musical\F_Tm_Notmus.pas' {F_tm_notmusic},
  F_Tm_SinRep in 'Forms\Teoria Musical\F_Tm_SinRep.pas' {F_Tm_SRep},
  FTeoriaMusical in 'Forms\Teoria Musical\FTeoriaMusical.pas' {Form_TM},
  F_Tm_Quialtera in 'Forms\Teoria Musical\F_Tm_Quialtera.pas' {F_Tm_Quialter},
  F_Tm_Scrodia in 'Forms\Teoria Musical\F_Tm_Scrodia.pas' {F_Tm_Semitoncro},
  F_Tm_SinDin in 'Forms\Teoria Musical\F_Tm_SinDin.pas' {F_Tm_Sindinam},
  F_Tm_SinCon in 'Forms\Teoria Musical\F_Tm_SinCon.pas' {f_Tm_Sincontr},
  FMusicografiaBraille in 'Forms\Musicografia Braille\FMusicografiaBraille.pas' {F_MusB},
  F_historico in 'Forms\Histórico\F_historico.pas' {F_historico_Mb},
  FCelaBraille in 'Forms\Cela Braile\FCelaBraille.pas' {Form_CB},
  F_Mub_Acd in 'Forms\Musicografia Braille\F_Mub_Acd.pas' {F_musb_acdnt},
  F_Mub_AgrVal in 'Forms\Musicografia Braille\F_Mub_AgrVal.pas' {F_musb_Agrpvalrs},
  F_Mub_And in 'Forms\Musicografia Braille\F_Mub_And.pas' {F_musb_And},
  F_Mub_Comp in 'Forms\Musicografia Braille\F_Mub_Comp.pas' {F_musb_compas},
  F_Mub_Notmus in 'Forms\Musicografia Braille\F_Mub_Notmus.pas' {F_mub_Notação},
  F_Mub_Orn in 'Forms\Musicografia Braille\F_Mub_Orn.pas' {F_mub_ornamenta},
  F_Mub_Qui in 'Forms\Musicografia Braille\F_Mub_Qui.pas' {F_mub_quialter},
  F_Mub_sinDin in 'Forms\Musicografia Braille\F_Mub_sinDin.pas' {F_Mub_sinaisrep},
  F_Mub_Sinrep in 'Forms\Musicografia Braille\F_Mub_Sinrep.pas' {F_Mub_SinRepet},
  F_Mub_TPVF in 'Forms\Musicografia Braille\F_Mub_TPVF.pas' {Form_teclado},
  Form_Mub_Art in 'Forms\Musicografia Braille\Form_Mub_Art.pas' {F_Mub_Art},
  FCB_ABraille in 'Forms\Cela Braile\FCB_ABraille.pas' {Form1},
  FCB_estrutura_CB in 'Forms\Cela Braile\FCB_estrutura_CB.pas' {FCB_Estrutura},
  FCB_Num in 'Forms\Cela Braile\FCB_Num.pas' {FCB_Numeros};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Principal, Form_Principal);
  Application.CreateForm(TF_TM_TSemit, F_TM_TSemit);
  Application.CreateForm(TF_TM_Acidentes, F_TM_Acidentes);
  Application.CreateForm(TFhistoricoMb, FhistoricoMb);
  Application.CreateForm(TF_TM_Articulações, F_TM_Articulações);
  
  Application.CreateForm(TF_TM_Articulações, F_TM_Articulações);
  Application.CreateForm(TF_tm_compass, F_tm_compass);
  Application.CreateForm(Tf_TM_Enhar, f_TM_Enhar);
  Application.CreateForm(Tf_Tm_music, f_Tm_music);
  Application.CreateForm(TF_tm_notmusic, F_tm_notmusic);
  Application.CreateForm(TF_Tm_SRep, F_Tm_SRep);
  Application.CreateForm(TForm_TM, Form_TM);
  Application.CreateForm(TF_Tm_Quialter, F_Tm_Quialter);
  Application.CreateForm(TF_Tm_Semitoncro, F_Tm_Semitoncro);
  Application.CreateForm(TF_Tm_Sindinam, F_Tm_Sindinam);
  Application.CreateForm(Tf_Tm_Sincontr, f_Tm_Sincontr);
  Application.CreateForm(TF_MusB, F_MusB);
  Application.CreateForm(TF_historico_Mb, F_historico_Mb);
  Application.CreateForm(TForm_CB, Form_CB);
  Application.CreateForm(TF_musb_acdnt, F_musb_acdnt);
  Application.CreateForm(TF_musb_Agrpvalrs, F_musb_Agrpvalrs);
  Application.CreateForm(TF_musb_And, F_musb_And);
  Application.CreateForm(TF_musb_compas, F_musb_compas);
  Application.CreateForm(TF_mub_Notação, F_mub_Notação);
  Application.CreateForm(TF_mub_ornamenta, F_mub_ornamenta);
  Application.CreateForm(TF_mub_quialter, F_mub_quialter);
  Application.CreateForm(TF_Mub_sinaisrep, F_Mub_sinaisrep);
  Application.CreateForm(TF_Mub_SinRepet, F_Mub_SinRepet);
  Application.CreateForm(TForm_teclado, Form_teclado);
  Application.CreateForm(TF_Mub_Art, F_Mub_Art);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFCB_Estrutura, FCB_Estrutura);
  Application.CreateForm(TFCB_Numeros, FCB_Numeros);
  Application.Run;
end.
