unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    lbl1: TLabel;
    imgUsuarios: TImage;
    imgSair: TImage;
    imgHotel: TImage;
    imgFuncHotel: TImage;
    imgEmpresas: TImage;
    imgFuncEmpresas: TImage;
    imgClientes: TImage;
    imgFornecedores: TImage;
    imgTipoPagamento: TImage;
    imgTurnos: TImage;
    imgBancos: TImage;
    imgDespesas: TImage;
    imgProdutos: TImage;
    blnhnt1: TBalloonHint;
    lbl2: TLabel;
    imgContasPagar: TImage;
    lbl4: TLabel;
    lbl5: TLabel;
    imgRelContasPagar: TImage;
    imgNavegador: TImage;
    imgConfiguracoes: TImage;
    imgRelContasReceber: TImage;
    imgContasReceber: TImage;
    statBarra: TStatusBar;
    tmrTempo: TTimer;
    imgVales: TImage;
    imgPagtoFunc: TImage;
    imgLancamentosCaixa: TImage;
    imgNotasPromissorias: TImage;
    imgNotaFiscais: TImage;
    imgSaidaProdutos: TImage;
    imgFechaCaixa: TImage;
    imgRelCaixa: TImage;
    btn1: TButton;
    procedure imgSairClick(Sender: TObject);
    procedure tmrTempoTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    procedure BarraStatus;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UfrmCadastroBasico;

{$R *.dfm}

procedure TfrmPrincipal.BarraStatus;
begin
 // barra do usu�rio
  statBarra.Panels[1].Alignment := taLeftJustify;
  statBarra.Panels[1].Style := psText;
  statBarra.Panels[1].Width := 180;
  statBarra.Panels[1].Text  := 'Usu�rio:';

  // barra do desenvolvedor
  statBarra.Panels[2].Alignment := taRightJustify;
  statBarra.Panels[2].Style := psText;
  statBarra.Panels[2].Width := 120;
  statBarra.Panels[2].Text  := 'C@rpe Diem Tecnologia Ltda';
end;

procedure TfrmPrincipal.btn1Click(Sender: TObject);
begin
  frmCadastroBasico := TfrmCadastroBasico.Create(nil);
  try
    frmCadastroBasico.ShowModal;
  finally
    FreeAndNil(frmCadastroBasico);
  end;

end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  BarraStatus;
end;

procedure TfrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
       if Application.MessageBox('Deseja sair do sistema?', 'ConPariz', MB_YESNO + MB_ICONQUESTION) = IDYES then
       begin
          Application.Terminate;
       end
       else
        Abort;
end;

procedure TfrmPrincipal.imgSairClick(Sender: TObject);
begin
   if Application.MessageBox('Deseja sair do sistema?', 'ConPariz', MB_YESNO + MB_ICONQUESTION) = IDYES then
     begin
        Application.Terminate;
     end
     else
      Abort;
end;

procedure TfrmPrincipal.tmrTempoTimer(Sender: TObject);
begin
  statBarra.Panels[0].Text := DateTimeToStr(Now);
end;

end.
