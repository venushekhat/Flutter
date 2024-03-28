// Write a program you have to make a summation of first and last Digit.
// (E.g. 1234 ans:-5)

import 'dart:io';

void main()
{

  print("Enter the Number : ");
  int number=int.parse(stdin.readLineSync()!);

  int lastdigits = number % 10;
  int absnumber = number.abs(); //maths library use mate
  int firstdigits = absnumber;
  while(firstdigits >= 10){
    firstdigits ~/=10;
  }
  firstdigits *=number < 0 ? -1 : 1 ;
  int sum = firstdigits + lastdigits;
  print('Summation of first and last digits is : $sum');
}