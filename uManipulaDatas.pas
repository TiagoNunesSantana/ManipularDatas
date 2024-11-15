unit uManipulaDatas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.NumberBox, uUtilData, Vcl.Mask;

type
  TfrmManipulaDatas = class(TForm)
    datePrincipal: TDateTimePicker;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtAddDia: TEdit;
    btnAddDias: TButton;
    Label3: TLabel;
    edtSubDias: TEdit;
    Label4: TLabel;
    btnSubDias: TButton;
    Label5: TLabel;
    dateDiferenca: TDateTimePicker;
    lblDifereca: TLabel;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    edtValidDate: TMaskEdit;
    btnValidar: TButton;
    lblPriDiaMes: TLabel;
    lblUltDiaMes: TLabel;
    Label8: TLabel;
    edtBissexto: TMaskEdit;
    Label9: TLabel;
    btnBissexto: TButton;
    btnFormatDate: TButton;
    dateCompara: TDateTimePicker;
    btnCompararDatas: TButton;
    Label10: TLabel;
    Label11: TLabel;
    edtAddMes: TEdit;
    Label12: TLabel;
    btnAddMes: TButton;
    Label13: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnAddDiasClick(Sender: TObject);
    procedure edtAddDiaKeyPress(Sender: TObject; var Key: Char);
    procedure btnSubDiasClick(Sender: TObject);
    procedure dateDiferencaChange(Sender: TObject);
    procedure btnValidarClick(Sender: TObject);
    procedure PriDiaMes;
    procedure UltDiaMes;
    procedure DiferencaDatas;
    procedure FormShow(Sender: TObject);
    procedure btnBissextoClick(Sender: TObject);
    procedure btnFormatDateClick(Sender: TObject);
    procedure btnCompararDatasClick(Sender: TObject);
    procedure btnAddMesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManipulaDatas: TfrmManipulaDatas;

implementation

{$R *.dfm}

procedure TfrmManipulaDatas.btnAddDiasClick(Sender: TObject);
var
  Dias: Integer;
begin
  if TryStrToInt(edtAddDia.Text, Dias) then
    datePrincipal.Date := TUtilData.AddDias(datePrincipal.Date, Dias)
  else
    ShowMessage('Insira um número válido para os dias.');
end;

procedure TfrmManipulaDatas.btnAddMesClick(Sender: TObject);
var
  Meses: Integer;
begin
  if TryStrToInt(edtAddMes.Text, Meses) then
  begin
    datePrincipal.Date := TUtilData.AddMeses(datePrincipal.Date, Meses);
    DiferencaDatas;
    PriDiaMes;
    UltDiaMes;
  end
  else
    Application.MessageBox('Insira um número válido para os meses.','Atenção',MB_OK+MB_ICONEXCLAMATION);
end;

procedure TfrmManipulaDatas.btnBissextoClick(Sender: TObject);
var
  Ano: Integer;
  sMsg: String;
begin
  sMsg := '';
  if TryStrToInt(edtBissexto.Text, Ano) then
  begin
    if TUtilData.AnoBissexto(Ano) then
      sMsg := Format('O ano %d é bissexto.', [Ano])
    else
      sMsg := Format('O ano %d não é bissexto.', [Ano]);
    Application.MessageBox(PChar(sMsg),'Atenção',MB_OK+MB_ICONEXCLAMATION);
  end
  else
    Application.MessageBox('Insira um ano válido.','Atenção',MB_OK+MB_ICONEXCLAMATION);
end;

procedure TfrmManipulaDatas.btnFormatDateClick(Sender: TObject);
begin
  Application.MessageBox(PChar('Data formatada:'+TUtilData.FormatDate(datePrincipal.Date)),'Atenção',MB_OK+MB_ICONEXCLAMATION)
end;

procedure TfrmManipulaDatas.btnSubDiasClick(Sender: TObject);
var
  Dias: Integer;
begin
  if TryStrToInt(edtSubDias.Text, Dias) then
    datePrincipal.Date := TUtilData.SubtrairDias(datePrincipal.Date, Dias)
  else
    Application.MessageBox('Insira um número válido para os dias.','Atenção',MB_OK+MB_ICONEXCLAMATION);
end;

procedure TfrmManipulaDatas.btnValidarClick(Sender: TObject);
begin
  try
    if (edtValidDate.Text <> '  /  /    ') then
      StrToDate(edtValidDate.Text);
    Application.MessageBox('Data válida!','Atenção',MB_OK+MB_ICONEXCLAMATION);
  except
    Application.MessageBox('Data Inválida!','Atenção',MB_OK+MB_ICONEXCLAMATION);
  end;
end;

procedure TfrmManipulaDatas.DiferencaDatas;
begin
  lblDifereca.Caption := Format('e a data pricipal é de %d dia(s).',[TUtilData.DifDias(datePrincipal.Date, dateDiferenca.Date)]);
end;

procedure TfrmManipulaDatas.btnCompararDatasClick(Sender: TObject);
begin
  Application.MessageBox(PChar(TUtilData.CompararDatas(datePrincipal.Date,dateCompara.Date)),'Atenção',MB_OK+MB_ICONEXCLAMATION)
end;

procedure TfrmManipulaDatas.dateDiferencaChange(Sender: TObject);
begin
  DiferencaDatas;
end;

procedure TfrmManipulaDatas.edtAddDiaKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in['0'..'9',#08] ) then key:=#0;
end;

procedure TfrmManipulaDatas.FormCreate(Sender: TObject);
begin
  datePrincipal.DateTime := Date;
end;

procedure TfrmManipulaDatas.FormShow(Sender: TObject);
begin
  DiferencaDatas;
  PriDiaMes;
  UltDiaMes;
end;

procedure TfrmManipulaDatas.PriDiaMes;
begin
  lblPriDiaMes.Caption := Format('O primeiro dia do mês da data principal é dia %s', [FormatDateTime('dd', TUtilData.PriDiaDoMes(datePrincipal.Date))]);
end;


procedure TfrmManipulaDatas.UltDiaMes;
var sMgs: String;
begin
    lblUltDiaMes.Caption := Format('O último dia do mês da data principal é dia %s', [FormatDateTime('dd', TUtilData.UltDiaDoMes(datePrincipal.Date))]);
end;

end.
