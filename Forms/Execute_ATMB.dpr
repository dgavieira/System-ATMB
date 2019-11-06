program Execute_ATMB;

uses
  Forms,
  Fprincipal in 'Fprincipal.pas' {Form_Principal},
  FTeoriaMusical in 'Teoria Musical\FTeoriaMusical.pas' {Form_TM},
  FMusicografiaBraille in 'Musicografia Braille\FMusicografiaBraille.pas' {F_MusB},
  F_historico in 'Histórico\F_historico.pas' {F_historico_Mb},
  FCelaBraille in 'Cela Braile\FCelaBraille.pas' {Form_CB},
  F_Tm_Alt in 'Teoria Musical\F_Tm_Alt.pas' {F_TM_Acidentes},
  F_TM_andamento in 'Teoria Musical\F_TM_andamento.pas' {F_Tm_and},
  F_Tm_Artic in 'Teoria Musical\F_Tm_Artic.pas' {F_TM_Articulacoes},
  F_Tm_Enh in 'Teoria Musical\F_Tm_Enh.pas' {f_TM_Enhar},
  F_TM_musica in 'Teoria Musical\F_TM_musica.pas' {f_Tm_music},
  F_Tm_Notmus in 'Teoria Musical\F_Tm_Notmus.pas' {F_tm_notmusic},
  F_Tm_Quialtera in 'Teoria Musical\F_Tm_Quialtera.pas' {F_Tm_Quialter},
  F_Tm_SinDin in 'Teoria Musical\F_Tm_SinDin.pas' {F_Tm_Sindinam},
  F_TM_compasso in 'Teoria Musical\F_TM_compasso.pas' {F_tm_compass},
  F_Tm_Scrodia in 'Teoria Musical\F_Tm_Scrodia.pas' {F_Tm_Semitoncro},
  F_Tm_SinCon in 'Teoria Musical\F_Tm_SinCon.pas' {f_Tm_Sincontr},
  F_Tm_SinRep in 'Teoria Musical\F_Tm_SinRep.pas' {F_Tm_SRep},
  F_Tm_Tons in 'Teoria Musical\F_Tm_Tons.pas' {F_TM_TSemit},
  F_Mub_Acd in 'Musicografia Braille\F_Mub_Acd.pas' {F_musb_acdnt},
  F_Mub_AgrVal in 'Musicografia Braille\F_Mub_AgrVal.pas' {F_musb_Agrpvalrs},
  F_Mub_And in 'Musicografia Braille\F_Mub_And.pas' {F_musb_And},
  F_Mub_Comp in 'Musicografia Braille\F_Mub_Comp.pas' {F_musb_compas},
  F_Mub_Notmus in 'Musicografia Braille\F_Mub_Notmus.pas' {F_mub_Notacao},
  F_Mub_Orn in 'Musicografia Braille\F_Mub_Orn.pas' {F_mub_ornamenta},
  F_Mub_Qui in 'Musicografia Braille\F_Mub_Qui.pas' {F_mub_quialter},
  F_Mub_sinDin in 'Musicografia Braille\F_Mub_sinDin.pas' {F_Mub_sinaisrep},
  F_Mub_Sinrep in 'Musicografia Braille\F_Mub_Sinrep.pas' {F_Mub_SinRepet},
  F_Mub_TPVF in 'Musicografia Braille\F_Mub_TPVF.pas' {Form_teclado},
  Form_Mub_Art in 'Musicografia Braille\Form_Mub_Art.pas' {F_Mub_Art},
  FCB_ABraille in 'Cela Braile\FCB_ABraille.pas' {FCB_AB},
  FCB_estrutura_CB in 'Cela Braile\FCB_estrutura_CB.pas' {FCB_Estrutura},
  FCB_Num in 'Cela Braile\FCB_Num.pas' {FCB_Numeros},
  F_exercicios in 'Exercícios\F_exercicios.pas' {f_exerc};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Principal, Form_Principal);
  Application.CreateForm(TForm_TM, Form_TM);
  Application.CreateForm(TF_MusB, F_MusB);
  Application.CreateForm(TF_historico_Mb, F_historico_Mb);
  Application.CreateForm(TForm_CB, Form_CB);
  Application.CreateForm(TF_Tm_and, F_Tm_and);
  Application.CreateForm(TF_TM_Acidentes, F_TM_Acidentes);
  Application.CreateForm(TF_Tm_and, F_Tm_and);
  Application.CreateForm(TF_TM_Articulacoes, F_TM_Articulacoes);
  Application.CreateForm(Tf_TM_Enhar, f_TM_Enhar);
  Application.CreateForm(Tf_Tm_music, f_Tm_music);
  Application.CreateForm(TF_tm_notmusic, F_tm_notmusic);
  Application.CreateForm(TF_Tm_Quialter, F_Tm_Quialter);
  Application.CreateForm(TF_Tm_Sindinam, F_Tm_Sindinam);
  Application.CreateForm(TF_tm_compass, F_tm_compass);
  Application.CreateForm(TF_Tm_Semitoncro, F_Tm_Semitoncro);
  Application.CreateForm(Tf_Tm_Sincontr, f_Tm_Sincontr);
  Application.CreateForm(TF_Tm_SRep, F_Tm_SRep);
  Application.CreateForm(TF_TM_TSemit, F_TM_TSemit);
  Application.CreateForm(TF_musb_acdnt, F_musb_acdnt);
  Application.CreateForm(TF_musb_Agrpvalrs, F_musb_Agrpvalrs);
  Application.CreateForm(TF_musb_And, F_musb_And);
  Application.CreateForm(TF_musb_compas, F_musb_compas);
  Application.CreateForm(TF_mub_Notacao, F_mub_Notacao);
  Application.CreateForm(TF_mub_ornamenta, F_mub_ornamenta);
  Application.CreateForm(TF_mub_quialter, F_mub_quialter);
  Application.CreateForm(TF_Mub_sinaisrep, F_Mub_sinaisrep);
  Application.CreateForm(TF_Mub_SinRepet, F_Mub_SinRepet);
  Application.CreateForm(TForm_teclado, Form_teclado);
  Application.CreateForm(TF_Mub_Art, F_Mub_Art);
  Application.CreateForm(TFCB_AB, FCB_AB);
  Application.CreateForm(TFCB_Estrutura, FCB_Estrutura);
  Application.CreateForm(TFCB_Numeros, FCB_Numeros);
  Application.CreateForm(Tf_exerc, f_exerc);
  Application.Run;
end.
