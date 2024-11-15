program ManipulaDatas;

uses
  Vcl.Forms,
  uManipulaDatas in 'uManipulaDatas.pas' {frmManipulaDatas},
  uUtilData in 'uUtilData.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmManipulaDatas, frmManipulaDatas);
  Application.Run;
end.
