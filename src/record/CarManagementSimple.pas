// Declare the program with a meaningful name.
program CarManagementSimple;

{$mode objfpc} // Ensures compatibility with modern Pascal compilers like Free Pascal and Lazarus.

uses SysUtils; // Import SysUtils to use functions like IntToStr and FloatToStr.

var
  CarBrand: String;   // Brand of the car (e.g., Toyota, BMW)
  CarModel: String;   // Model of the car (e.g., Corolla, X5)
  CarYear: Integer;   // Manufacturing year
  CarPrice: Real;     // Price of the car in dollars
  CarInfo: String;    // String to store formatted car details

begin
  // Ask for user input.
  WriteLn('Enter car details:');

  Write('Brand: ');
  ReadLn(CarBrand); // Read the car brand.

  Write('Model: ');
  ReadLn(CarModel); // Read the model name.

  Write('Year: ');
  ReadLn(CarYear); // Read the manufacturing year.

  Write('Price ($): ');
  ReadLn(CarPrice); // Read the price.

  // Construct a formatted string containing car details.
  CarInfo := 'Brand: ' + CarBrand + ', Model: ' + CarModel +
             ', Year: ' + IntToStr(CarYear) + ', Price: $' + FloatToStr(CarPrice);

  // Display the car details.
  WriteLn('Car Details:');
  WriteLn(CarInfo);
end.
