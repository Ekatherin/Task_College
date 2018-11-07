unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
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
var a: array [0..10] of integer;
    i, min:integer;
begin
    a[0]:=random(100);
    for i:=1 to 10 do
     begin
      a[i]:=random(100);
      if a[i]<min then
        min:=a[i];
     end;
     Edit1.Text:=IntToStr(min);
end;

end.
