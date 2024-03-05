// Write a program you have to print the table of given number.
import 'dart:io';

void main()
{
  var number,i=1;

  print("Enter the Number : "); //table to you print
  number=int.parse(stdin.readLineSync()!);

  print("Table of $number");
  for(i=1; i<=10; i++)
  {
           print("$number x $i = ${number * i}"); //calculate
  } 
}