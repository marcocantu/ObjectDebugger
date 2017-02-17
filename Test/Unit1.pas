unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, ObjectDebuggerForm;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    CantObjectDebugger1: TCantObjectDebugger;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  showmessage(edit1.text);
end;

end.
