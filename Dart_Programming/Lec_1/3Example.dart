import 'dart:io';

void main()
{
  var num1,num2;
  print("Enter the First Number : ");
  num1=int.parse(stdin.readLineSync()!);
  print("Enter the Secound Number : ");
  num2=int.parse(stdin.readLineSync()!);
  print(num1+num2);
}