program draw;


procedure DrawDiamond(size : Integer ; ch: Char);
var
i,j :Integer;

begin
    for i:=1 to size do
    begin
        for j:= 1 to (size-i)  do  
        begin
            Write(' ');
        end;
        for j:= 1 to (2*i-1)  do  
        begin
            Write(ch);
        end;
        WriteLn();
    end;
    for i:=size-1 downto 1 do
    begin
        for j:= 1 to (size-i)  do  
        begin
            Write(' ');
        end;
        for j:= 1 to (2*i-1)  do  
        begin
            Write(ch);
        end;
        WriteLn();
    end;

end;




var
size : Integer;
ch: Char;
begin
  repeat
    Write('enter the size of diamond between (1 - 50): ');
    ReadLn(size);
  until (size >= 1) and (size <= 50);

 repeat
    Write('enter the charater ch: ');
    ReadLn(ch);
  until ch <> '';

  DrawDiamond(size, ch);
end.


