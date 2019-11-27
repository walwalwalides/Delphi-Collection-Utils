{ ============================================
  Software Name : 	DefineStringsList
  ============================================ }
{ ******************************************** }
{ Written By WalWalWalides                     }
{ CopyRight © 2019                             }
{ Email : WalWalWalides@gmail.com              }
{ GitHub :https://github.com/walwalwalides     }
{ ******************************************** }

Unit DupStringList;

interface

uses Sysutils, Classes;

type

  TDupStringList = class(Classes.TStringList)
    Procedure AddNoDup(Astring: string);
  end;

implementation

Procedure TDupStringList.AddNoDup(Astring: string);
  function DupExist: boolean;
  var
    i: integer;
    boolean_marker_found: boolean;

    function Equality: boolean;
    var
      ficelle: string;
    begin
      ficelle := self.Strings[i];
      Equality := strcomp(pchar(ficelle), pchar(Astring)) = 0;
    end;

  begin
    boolean_marker_found := false;
    for i := 0 to pred(self.count) do
      boolean_marker_found := boolean_marker_found or Equality;
    DupExist := boolean_marker_found;
  end;

begin
  if self.count = 0 then
    self.Add(Astring)
  else if not DupExist then
    self.Add(Astring);
end;

end.
