// Write a program you have to find the factorial of given number.

import 'dart:io';

void main()
{
  var number;
  print("Enter the number : ");
  number=int.parse(stdin.readLineSync()!);
  int factorial=1;
  for(var i=1; i<=number; i++)
  {
    factorial *=i;
  }
  print('Factorial of $number is: $factorial');
}