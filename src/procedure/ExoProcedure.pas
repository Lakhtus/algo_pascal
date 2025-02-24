program ExoProcedure;


procedure SayHello(name: String);
begin
    WriteLn('Hello ', name);
end;

function Square(n: Integer): Integer;
var
  y: Integer;

begin
  Square := n * n;
end;


var
  x: Integer;
  res: Integer;

begin
    SayHello('Anes');
    Write('Please zrite the vqlue for n: ');
    Read(x);
    res := Square(x);
    WriteLn('Result of square ', x, ' is ', res);
end.