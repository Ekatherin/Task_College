unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
    a[0]:=random(50);
    for i:=1 to 10 do
     begin
      a[i]:=random(50);
      if a[i]<min then
        min:=a[i];
     end;
     Edit1.Text:=IntToStr(min);
end;

procedure TForm1.Button2Click(Sender: TObject);
var i, j: integer;
begin
 i:=StrToInt(Edit1.Text);
 ListBox1.Clear;
 for j:=2 to i do
  begin
      if ((i mod j) = 0) then
         ListBox1.Items.Add(inttostr(j));
   end;

end;

end.
