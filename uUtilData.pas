unit uUtilData;

interface

uses SysUtils;

type
  TUtilData = class
  public
    class function AddDias(Data: TDateTime; Dias: Integer): TDate;
    class function SubtrairDias(Data: TDateTime; Dias: Integer): TDate;
    class function DifDias(DataIni: TDateTime; DataFim: TDateTime): Integer;
    class function PriDiaDoMes(Data: TDateTime): TDate;
    class function UltDiaDoMes(Data: TDateTime): TDate;
    class function AnoBissexto(Ano: Integer): Boolean;
    class function FormatDate(Data: TDateTime): string;
    class function CompararDatas(Dt1, Dt2: TDateTime): string;
    class function AddMeses(Data: TDateTime; Meses: Integer): TDateTime;
  end;

implementation

// Adiciona dias à data
class function TUtilData.AddDias(Data: TDateTime; Dias: Integer): TDate;
begin
  Result := Data + Dias;
end;

// Subtrai dias da data
class function TUtilData.SubtrairDias(Data: TDateTime; Dias: Integer): TDate;
begin
  Result := Data - Dias;
end;

// Calcula a diferença de dias entre duas datas
class function TUtilData.DifDias(DataIni, DataFim: TDateTime): Integer;
begin
  Result := Trunc(DataFim - DataIni);
end;

// Retorna o primeiro dia do mês
class function TUtilData.PriDiaDoMes(Data: TDateTime): TDate;
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(Data, Ano, Mes, Dia);
  Result := EncodeDate(Ano, Mes, 1);
end;

// Retorna o último dia do mês
class function TUtilData.UltDiaDoMes(Data: TDateTime): TDate;
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(Data, Ano, Mes, Dia);
  if Mes = 12 then
    Result := EncodeDate(Ano + 1, 1, 1) - 1 // Último dia de dezembro
  else
    Result := EncodeDate(Ano, Mes + 1, 1) - 1; // Último dia de outros meses
end;

// Verifica se um ano é bissexto
class function TUtilData.AnoBissexto(Ano: Integer): Boolean;
begin
  Result := (Ano mod 4 = 0) and ((Ano mod 100 <> 0) or (Ano mod 400 = 0));
end;

// Formata uma data como string no formato DD/MM/YYYY
class function TUtilData.FormatDate(Data: TDateTime): string;
begin
  Result := FormatDateTime('DD/MM/YYYY', Data);
end;

// Compara duas datas
class function TUtilData.CompararDatas(Dt1, Dt2: TDateTime): string;
begin
  if Dt1 < Dt2 then
    Result := 'Data principal é anterior à data comparada'
  else if Dt1 > Dt2 then
    Result := 'Data principal é posterior à data comparada'
  else
    Result := 'As datas são iguais';
end;

// Adiciona meses a uma data
class function TUtilData.AddMeses(Data: TDateTime;
  Meses: Integer): TDateTime;
var
  Ano, Mes, Dia: Word;
  NovoAno, NovoMes, NovoDia: Integer;
begin
  //Result := IncMonth(Data, Meses);
  
  DecodeDate(Data, Ano, Mes, Dia);
  NovoAno := Ano + (Mes - 1 + Meses) div 12;
  NovoMes := (Mes - 1 + Meses) mod 12 + 1;

  // Ajustar o dia para o final do mês, se necessário
  if (NovoMes in [4, 6, 9, 11]) and (Dia > 30) then
    Dia := 30
  else if (NovoMes = 2) then
  begin
    if AnoBissexto(NovoAno) and (Dia > 29) then
      Dia := 29
    else if not AnoBissexto(NovoAno) and (Dia > 28) then
      Dia := 28;
  end;

  Result := EncodeDate(NovoAno, NovoMes, Dia);
end;













end.
