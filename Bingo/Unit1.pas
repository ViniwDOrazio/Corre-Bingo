unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    gpnlBolas: TGridPanel;
    pnlB: TPanel;
    pnlI: TPanel;
    pnlN: TPanel;
    pnlG: TPanel;
    pnlO: TPanel;
    pnlColunaB: TPanel;
    pnlColunaI: TPanel;
    pnlColunaN: TPanel;
    pnlColunaG: TPanel;
    pnlColunaO: TPanel;
    pnlEscreve: TPanel;
    pnlSorteados: TPanel;
    edtBola: TEdit;
    btnRegistra: TSpeedButton;
    pnlSorteada: TPanel;
    mmoSorteados: TMemo;
    shpBola: TShape;
    lblSorteada: TLabel;
    btnLimpar: TSpeedButton;
    pnlBolaDaVez: TPanel;
    pnlBolaDaVez1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure pnlColunaBResize(Sender: TObject);
    procedure btnRegistraClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure edtBolaKeyPress(Sender: TObject; var Key: Char);
  private
    const TOTAL_BOLAS = 75;
          BOLAS_COLUNA = 15;
    function PegarPanelColuna(iBola: Integer): TPanel;
    procedure MarcarBola(iBola: Integer);
    procedure PanelClick(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnLimparClick(Sender: TObject);
var i, j: Integer;
    PanelColuna: TPanel;
begin
  lblSorteada.Caption := EmptyStr;
  mmoSorteados.Clear;
  for i := 0 to gpnlBolas.ControlCount - 1 do
    if gpnlBolas.Controls[i].Tag >= 0 then
    begin
      PanelColuna := TPanel(gpnlBolas.Controls[i]);
      for j := 0 to PanelColuna.ControlCount - 1 do
        TPanel(PanelColuna.Controls[j]).Color := clWhite;
    end;
end;

procedure TForm1.btnRegistraClick(Sender: TObject);
var iBola: Integer;
begin
  iBola := StrToIntDef(edtBola.Text, 0);
  edtBola.Clear;
  if ((iBola = 0) or (iBola > TOTAL_BOLAS)) then
    Exit;

  MarcarBola(iBola);
end;

procedure TForm1.edtBolaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnRegistraClick(Sender);
end;

procedure TForm1.FormCreate(Sender: TObject);
var i: Integer;
    PanelColuna, PanelAux: TPanel;
begin
  for i := 1 to TOTAL_BOLAS do
  begin
    PanelColuna := PegarPanelColuna(i);
    PanelAux := TPanel.Create(Self);
    PanelAux.Parent := PanelColuna;
    PanelAux.Height := 25;
    PanelAux.Margins.Bottom := 2;
    PanelAux.Margins.Left := 0;
    PanelAux.Margins.Right := 0;
    PanelAux.Margins.Top := 2;
    PanelAux.Top := Trunc(PanelColuna.Height * 2);
    PanelAux.AlignWithMargins := True;
    PanelAux.Align := alTop;
    PanelAux.ParentBackground := False;
    PanelAux.ParentColor := False;
    PanelAux.Color := clWhite;
    PanelAux.Font.Size := 14;
    PanelAux.Font.Style := [fsBold];
    PanelAux.Tag := i;
    PanelAux.Caption := IntToStr(i);
    PanelAux.BevelOuter := bvNone;
    PanelAux.OnClick := PanelClick;
  end;
end;

procedure TForm1.MarcarBola(iBola: Integer);
var PanelColuna: TPanel;
  i: Integer;
begin
  if lblSorteada.Caption <> EmptyStr then
    mmoSorteados.Lines.Text := lblSorteada.Caption + #13#10 + mmoSorteados.Lines.Text;

  lblSorteada.Caption := FormatFloat('00', iBola);

  PanelColuna := PegarPanelColuna(iBola);
  for i := 0 to PanelColuna.ControlCount - 1 do
    if (PanelColuna.Controls[i].Tag = iBola) then
      TPanel(PanelColuna.Controls[i]).Color := $00BEBEFF;
end;

procedure TForm1.PanelClick(Sender: TObject);
begin
  if (Sender is TPanel) then
  begin
    MarcarBola(TPanel(Sender).Tag);
  end;
end;

function TForm1.PegarPanelColuna(iBola: Integer): TPanel;
var i, iColuna: Integer;
begin
  Result := nil;
  iColuna := Trunc((iBola - 1)  / BOLAS_COLUNA);
  for i := 0 to gpnlBolas.ControlCount - 1 do
    if gpnlBolas.Controls[i].Tag = iColuna then
    begin
      Result := TPanel(gpnlBolas.Controls[i]);
      Break
    end;
end;

procedure TForm1.pnlColunaBResize(Sender: TObject);
var i, iBolaAltura: Integer;
begin
  iBolaAltura := Trunc((TPanel(Sender).Height / 15) - 4);
  for i := 0 to TPanel(Sender).ControlCount - 1 do
    TPanel(TPanel(Sender).Controls[i]).Height := iBolaAltura;
end;

end.
