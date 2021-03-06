unit UfrmCadastroBasico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Buttons;

type
  TfrmCadastroBasico = class(TForm)
    dsTabela: TDataSource;
    statBarra: TStatusBar;
    pnl1: TPanel;
    actCadastro: TActionToolBar;
    pgc1: TPageControl;
    tbsCadastro: TTabSheet;
    tbsPesquisa: TTabSheet;
    dbgGrade: TDBGrid;
    ilImagens: TImageList;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actInserirExecute(Sender: TObject);
    procedure actInserirUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroBasico: TfrmCadastroBasico;

implementation

{$R *.dfm}

procedure TfrmCadastroBasico.actInserirExecute(Sender: TObject);
begin
     { TODO 1 -oLuiz -cCadastro : Codificar }
end;

procedure TfrmCadastroBasico.actInserirUpdate(Sender: TObject);
begin
   { TODO 1 -oLuiz -cCadastro : Codificar }
end;

procedure TfrmCadastroBasico.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #27 then
       if Application.MessageBox('Deseja sair dessa tela?', 'ConPariz', MB_YESNO + MB_ICONQUESTION) = IDYES then
       begin
          Close;
       end
       else
        Abort;

    if Key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

end.
