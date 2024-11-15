object frmManipulaDatas: TfrmManipulaDatas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Manipula'#231#227'o de datas'
  ClientHeight = 480
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object datePrincipal: TDateTimePicker
    Left = 0
    Top = 17
    Width = 573
    Height = 48
    Hint = 'Data principal'
    Align = alTop
    Date = 45610.000000000000000000
    Time = 0.681003402780334000
    DateFormat = dfLong
    DoubleBuffered = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 52
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 461
    Width = 573
    Height = 19
    Panels = <>
    ExplicitLeft = 360
    ExplicitTop = 336
    ExplicitWidth = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 65
    Width = 573
    Height = 396
    Align = alClient
    TabOrder = 2
    ExplicitTop = 59
    object Label1: TLabel
      Left = 100
      Top = 19
      Width = 66
      Height = 21
      Caption = 'Adicionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 209
      Top = 19
      Width = 151
      Height = 21
      Caption = 'dia(s) na data pricipal.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 110
      Top = 62
      Width = 56
      Height = 21
      Caption = 'Subtrair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 209
      Top = 62
      Width = 160
      Height = 21
      Caption = 'dia(s) da data principal.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 55
      Top = 102
      Width = 159
      Height = 21
      Caption = 'Diferen'#231'a de dias entre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblDifereca: TLabel
      Left = 319
      Top = 100
      Width = 199
      Height = 21
      Caption = 'e a data principal '#233' de 0 dias.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 132
      Top = 137
      Width = 94
      Height = 21
      Caption = 'Validar a data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblPriDiaMes: TLabel
      Left = 110
      Top = 175
      Width = 300
      Height = 21
      Caption = 'O primeiro dia do m'#234's da data principal '#233' 0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblUltDiaMes: TLabel
      Left = 118
      Top = 202
      Width = 285
      Height = 21
      Caption = 'O '#250'ltimo dia do m'#234's da data principal '#233' 0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 125
      Top = 235
      Width = 67
      Height = 21
      Caption = 'O ano de '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 235
      Top = 237
      Width = 79
      Height = 21
      Caption = #233' bissexto ?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 53
      Top = 316
      Width = 116
      Height = 21
      Caption = 'Comparar a data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 100
      Top = 355
      Width = 66
      Height = 21
      Caption = 'Adicionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 209
      Top = 354
      Width = 112
      Height = 21
      Caption = 'mes(es) na data.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 270
      Top = 316
      Width = 143
      Height = 21
      Caption = 'com a data principal.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edtAddDia: TEdit
      Left = 172
      Top = 16
      Width = 31
      Height = 29
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0'
      OnKeyPress = edtAddDiaKeyPress
    end
    object btnAddDias: TButton
      Left = 366
      Top = 18
      Width = 86
      Height = 25
      Caption = 'Adicionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnAddDiasClick
    end
    object edtSubDias: TEdit
      Left = 172
      Top = 59
      Width = 31
      Height = 29
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0'
      OnKeyPress = edtAddDiaKeyPress
    end
    object btnSubDias: TButton
      Left = 375
      Top = 61
      Width = 86
      Height = 25
      Caption = 'Subtrair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnSubDiasClick
    end
    object dateDiferenca: TDateTimePicker
      Left = 220
      Top = 100
      Width = 93
      Height = 23
      Hint = 'Altere essa data para calcular a diferen'#231'a.'
      Date = 45610.000000000000000000
      Time = 0.738638842594809800
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnChange = dateDiferencaChange
    end
    object edtValidDate: TMaskEdit
      Left = 232
      Top = 137
      Width = 70
      Height = 23
      Alignment = taCenter
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
    end
    object btnValidar: TButton
      Left = 308
      Top = 137
      Width = 75
      Height = 25
      Caption = 'Validar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnValidarClick
    end
    object edtBissexto: TMaskEdit
      Left = 198
      Top = 237
      Width = 31
      Height = 23
      Alignment = taCenter
      EditMask = '0000;1;_'
      MaxLength = 4
      TabOrder = 7
      Text = '    '
    end
    object btnBissexto: TButton
      Left = 320
      Top = 233
      Width = 75
      Height = 25
      Caption = 'Verificar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = btnBissextoClick
    end
    object btnFormatDate: TButton
      Left = 94
      Top = 276
      Width = 371
      Height = 25
      Caption = 'Formatar data principal no formato DD/MM/YYYY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = btnFormatDateClick
    end
    object dateCompara: TDateTimePicker
      Left = 175
      Top = 316
      Width = 89
      Height = 23
      Date = 45610.000000000000000000
      Time = 0.894523391201801100
      TabOrder = 10
    end
    object btnCompararDatas: TButton
      Left = 419
      Top = 314
      Width = 125
      Height = 25
      Caption = 'Comparar datas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = btnCompararDatasClick
    end
    object edtAddMes: TEdit
      Left = 172
      Top = 352
      Width = 31
      Height = 29
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      Text = '0'
      OnKeyPress = edtAddDiaKeyPress
    end
    object btnAddMes: TButton
      Left = 324
      Top = 354
      Width = 86
      Height = 25
      Caption = 'Adicionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = btnAddMesClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 573
    Height = 17
    Align = alTop
    TabOrder = 3
    object Label6: TLabel
      Left = 8
      Top = 1
      Width = 73
      Height = 15
      Caption = 'Data Principal'
    end
  end
end
