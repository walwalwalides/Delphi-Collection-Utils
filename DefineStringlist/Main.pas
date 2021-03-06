 { ============================================
  Software Name : 	DefineStringsList
  ============================================ }
{ ******************************************** }
{ Written By WalWalWalides                     }
{ CopyRight � 2019                             }
{ Email : WalWalWalides@gmail.com              }
{ GitHub :https://github.com/walwalwalides     }
{ ******************************************** }

unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.AppEvnts, System.Actions, Vcl.ActnList, Vcl.Menus;

type
  TfrmMain = class(TForm)
    btnADD: TButton;
    btnShowstrList1: TButton;
    btnShowstrList2: TButton;
    GroupBox1: TGroupBox;
    ApplicationEvents1: TApplicationEvents;
    btnCompaire: TButton;
    GrpBoxCompaire: TGroupBox;
    GrpBoxAdd: TGroupBox;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    OpenFiles1: TMenuItem;
    OpenFolders1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Edit1: TMenuItem;
    CopytoClipboard1: TMenuItem;
    View1: TMenuItem;
    Refresh1: TMenuItem;
    A1: TMenuItem;
    C1: TMenuItem;
    miSum: TMenuItem;
    Option1: TMenuItem;
    actOption1: TMenuItem;
    A2: TMenuItem;
    actAbout1: TMenuItem;
    ActionList1: TActionList;
    actClear: TAction;
    actSum: TAction;
    actOpenFile: TAction;
    actShowInExplorer: TAction;
    actOpenFolder: TAction;
    actExit: TAction;
    actCopyToClipboard: TAction;
    actRefresh: TAction;
    actSettings: TAction;
    actAbout: TAction;
    procedure btnADDClick(Sender: TObject);
    procedure btnShowstrList1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnShowstrList2Click(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure btnCompaireClick(Sender: TObject);
    procedure actAboutExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmMain: TfrmMain;

implementation

uses DupStringList,uAbout;
{$R *.dfm}

var
  strLstT1: TDupStringList;
  strLstT2: TStringlist;

procedure TfrmMain.actAboutExecute(Sender: TObject);
var
  f: TfrmAbout;
begin
  if Assigned(f) then
    Application.CreateForm(TfrmAbout, f);
  f.Position := poMainFormCenter;
  try
    f.ShowModal;
  finally
    FreeAndNil(f);
  end;
end;

procedure TfrmMain.actExitExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
  if (strLstT1.Count > 0) then
    btnShowstrList1.Enabled := true
  else
    btnShowstrList1.Enabled := False;

   if (strLstT2.Count > 0) then
    btnShowstrList2.Enabled := true
  else
    btnShowstrList2.Enabled := False;


end;

procedure TfrmMain.btnADDClick(Sender: TObject);
begin
  strLstT1.AddNoDup('Test');
  strLstT1.AddNoDup('Test');            // add duplicate string to stringlist
  strLstT1.AddNoDup('Test2');

  // ----------------------------------------------------------- //

  strLstT2.add('Test');
  strLstT2.add('Test');
  strLstT2.add('Test2');

end;

procedure TfrmMain.btnShowstrList1Click(Sender: TObject);
Begin
  ShowMessage(strLstT1.Text);
end;

procedure TfrmMain.btnShowstrList2Click(Sender: TObject);
begin
  ShowMessage(strLstT2.Text);
end;


procedure ExtractDuplicate(List1, List2: TStringList;Dupes: TStrings);
var
  Both: TStringList;
  I: Integer;
begin
  Both := TStringList.Create;
  try
    Both.AddStrings(List1);
    Both.AddStrings(List2);
    Both.Sort;
    for I := 0 to Both.Count - 2 do
      if (Both[I] = Both[I + 1]) then
        if (Dupes.Count = 0) or (Dupes[Dupes.Count - 1] <> Both[I]) then
          Dupes.Add(Both[I]);
  finally
    Both.Free;
  end;
end;


procedure TfrmMain.btnCompaireClick(Sender: TObject);
var
  Dupes: Tstrings;
begin
  Dupes:=TStrings.Create;
  ExtractDuplicate(strLstT1,strLstT2,Dupes);
  try
   ShowMessage(Dupes.Text);
  finally
    Dupes.Free;
  end;


end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  { Define Stringlist }
  strLstT1 := TDupStringList.Create;

  { Standard Stringlist }
  strLstT2 := TStringlist.Create;

  strLstT2.Sorted := true;
  strLstT2.Duplicates := dupIgnore;
  // -------------------------------------------------
  frmMain.position := poMainFormCenter;
  frmMain.Color:=clWindow;
  frmMain.WindowState:=wsMaximized;
end;

end.
