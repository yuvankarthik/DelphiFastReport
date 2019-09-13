(*
  Author : KARTHIK THIRUMMORTHI
  Date : 13/09/2019

  FastReport Version : 5.6
*)

unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    frxReport1: TfrxReport;
    PRINT: TButton;
    Label1: TLabel;
    procedure PRINTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.PRINTClick(Sender: TObject);
begin
  //Preparing Report
  frxReport1.PrepareReport();
  //Enabling silent print
  frxReport1.PrintOptions.ShowDialog := false;

  //Assigning printer
  frxReport1.PrintOptions.Printer := 'Microsoft Print to PDF';
  //Selecting Printer
  frxReport1.SelectPrinter;
  //Assigning print page number
  frxReport1.PrintOptions.PageNumbers := '1';
  //Calling print method to do print
  frxReport1.Print;

  //Assigning printer
  frxReport1.PrintOptions.Printer := 'Microsoft XPS Document Writer';
  //Selecting Printer
  frxReport1.SelectPrinter;
  //Assigning print page number
  frxReport1.PrintOptions.PageNumbers := '2';
  //Calling print method to do print
  frxReport1.Print;
end;

end.
