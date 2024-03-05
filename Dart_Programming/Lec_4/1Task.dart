// Write a program that asks the user how many fibonnaci numbers to generate and
//  then generates them.
// Take this opportunity to think about how you can use functions

// Function to generate Fibonacci numbers
import 'dart:io';

void main()
{
  var no;

  print("Enter the Number : ");
  no=int.parse(stdin.readLineSync()!);
  print("_____________________________________");

  int a=0;
  int b=1;
  int c;
  for (var i = 0; i < no; i++) {
     c=a+b;
    print(c);
    a=b;
    b=c;

  }

  




}