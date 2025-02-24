program inventory_managment;

type TProduct= record

    name :String ;
    category : String ;
    price : Real ;
    quantity : Integer ;
end;

function CreateProduct:TProduct;
var
product:TProduct;

begin
WriteLn('Enter the name of the product :');
ReadLn(product.name);
WriteLn('Enter the category :');
ReadLn(product.category);
WriteLn('Enter the price :');
ReadLn(product.price);
WriteLn('Enter the quantity in the stock :');
ReadLn(product.quantity);

CreateProduct:=product;
end;

procedure ShowProduct(product:TProduct);
    begin
    WriteLn('Name : ',product.name );
    WriteLn('Category : ',product.category );
    WriteLn('Price : ', product.price:0:2);
    WriteLn('Stock : ',product.quantity );
    WriteLn;
    end;
var
N,i :Integer;
Inventory: array of TProduct;

begin
    repeat
    WriteLn('Enter the number of products :');
    ReadLn(N);
    until (N>=1) and (N<=100);


    SetLength(Inventory,N);
        for i:=0 to n-1 do
        begin
            WriteLn('Product ',i+1,':');
            Inventory[i]:=CreateProduct;
        end;
        
    for i:=0 to n-1 do
    begin
      WriteLn('Product ',i+1,':');
      ShowProduct(Inventory[i]);
    end;

end.