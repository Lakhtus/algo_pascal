program ExoProcedure;

 type Tbook = record
  titre : String;
  auteur : String;
  anne_de_pub : Integer;
  prix : Real;
 end;


procedure printBook(book: Tbook) ;
begin
 WriteLn('Titre : ', book.titre);
 WriteLn('Auteur : ', book.auteur);
 WriteLn('Anne de pub : ', book.anne_de_pub);
 WriteLn('Prix :', book.prix:0:2, ' $');
 WriteLn;
end;

function CreateBook:Tbook;
var book:Tbook;
    begin
        WriteLn('Enter the name of book');
        ReadLn(book.titre);
        WriteLn('Enter the name of auteur');
        ReadLn(book.auteur);
        WriteLn('Enter the date of pub');
        ReadLn(book.anne_de_pub);
        WriteLn('Enter the price');
        ReadLn(book.prix);

        CreateBook:=book;
    end;

var
n,i : Integer;
book: Tbook;
bibliotheque: array of Tbook;

begin
    repeat
        WriteLn('how many books do u want to add? ');
        ReadLn(n);
    until ((n>=1) and (n<=50));


    SetLength(bibliotheque, n); 

        for i:=0 to n-1 do
        begin
            WriteLn('Livre ',i+1,':');
            bibliotheque[i] := CreateBook;
        end;

    for i:=0 to n-1 do
    begin
        WriteLn('Livre ',i+1,':');
        printBook(bibliotheque[i]);
    end;
end.