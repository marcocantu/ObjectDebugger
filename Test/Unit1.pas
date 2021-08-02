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
    Button2: TButton;
    CantObjectDebugger1: TCantObjectDebugger;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FCantObjectDebugger: TCantObjectDebugger;
    procedure CantObjectDebuggerClose(Sender: TObject);
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
  CantObjectDebugger1.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if FCantObjectDebugger = nil then
    FCantObjectDebugger := TCantObjectDebugger.Create(nil);

  FCantObjectDebugger.AllowFormClose := true;
  FCantObjectDebugger.OnClose := CantObjectDebuggerClose;
end;

procedure TForm1.CantObjectDebuggerClose(Sender: TObject);
begin
 FCantObjectDebugger := nil;
end;

end.
