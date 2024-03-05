// a Program to check the given year is leap year or not
import 'dart:io';

void main()
{
  var year;
  print("Enter the Year : "); //year
  year=int.parse(stdin.readLineSync()!);

  if(year%4==0) //Leap year counting
  {
    print("This Year Is Leap Year...");
  }
  else
  print("This Is Not Leap Year...");
}