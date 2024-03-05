// a program to make a square and cube of number
import 'dart:io';

void main()
{
  var num;

  print("Input the Number : "); //user input number
  num=int.parse(stdin.readLineSync()!);

  print("Square of the Number : ${num*num}"); //square
  print("Cube of the Number   : ${num*num*num}"); //cube
}