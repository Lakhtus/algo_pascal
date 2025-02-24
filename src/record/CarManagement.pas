// Declare the program with a meaningful name.
program CarManagement;

{$mode objfpc} // Ensures compatibility with modern Pascal compilers like Free Pascal and Lazarus.

uses SysUtils; // Import SysUtils to use functions like IntToStr and FloatToStr.

// ======================== Type Declarations ===========================

type
  // Define a record type to store car details.
  TCar = record
    Brand: String;    // Brand of the car (e.g., Toyota, BMW)
    Model: String;    // Model of the car (e.g., Corolla, X5)
    Year: Integer;    // Manufacturing year
    Price: Real;      // Price of the car in dollars
  end;

  // Define an array type to store multiple cars.
  TCarArray = array of TCar;

// ======================== Function: Convert Car to Text ===========================
{
  This function takes a TCar record and converts it into a readable string format.
}
function CarToText(Car: TCar): String;
begin
  // Construct a formatted string containing car details.
  CarToText := 'Brand: ' + Car.Brand + ', Model: ' + Car.Model +
               ', Year: ' + IntToStr(Car.Year) + ', Price: $' + FloatToStr(Car.Price);
end;

// ======================== Procedure: Display Car Information ===========================
{
  This procedure takes a TCar record and prints its details.
}
procedure ShowCar(Car: TCar);
begin
  WriteLn(CarToText(Car)); // Calls CarToText to format the output.
end;

// ======================== Procedure: Display All Cars ===========================
{
  This procedure takes an array of cars and prints their details.
}
procedure ShowAllCars(CarList: TCarArray);
var
  i: Integer;
begin
  WriteLn('List of Cars:');
  for i := 0 to High(CarList) do
  begin
    WriteLn('Car ', i + 1, ':');
    ShowCar(CarList[i]);
    WriteLn;
  end;
end;

// ======================== Function: Create a Car ===========================
{
  This function interacts with the user to create a TCar record.
  It prompts the user for car details.
}
function CreateCar: TCar;
var
  NewCar: TCar; // Temporary variable to store user input.
begin
  // Ask for user input.
  WriteLn('Enter car details:');

  Write('Brand: ');
  ReadLn(NewCar.Brand); // Read the car brand.

  Write('Model: ');
  ReadLn(NewCar.Model); // Read the model name.

  Write('Year: ');
  ReadLn(NewCar.Year); // Read the manufacturing year.

  Write('Price ($): ');
  ReadLn(NewCar.Price); // Read the price.

  // Return the constructed TCar record.
  CreateCar := NewCar;
end;

// ======================== Procedure: Read Multiple Cars ===========================
{
  This procedure reads 'N' cars from the user and stores them in an array.
}
procedure ReadCars(var CarList: TCarArray; N: Integer);
var
  i: Integer;
begin
  // Set the size of the dynamic array
  SetLength(CarList, N);

  for i := 0 to N - 1 do
  begin
    WriteLn('Entering details for Car ', i + 1, ':');
    CarList[i] := CreateCar;
  end;
end;

// ======================== Main Program Execution ===========================

var
  Cars: TCarArray; // Declare an array of TCar to store multiple cars.
  N: Integer;      // Number of cars.

begin
  // Ask user how many cars they want to enter
  Write('Enter the number of cars: ');
  ReadLn(N);

  // Read the cars and store them in the array
  ReadCars(Cars, N);

  // Display all entered cars
  ShowAllCars(Cars);
end.
