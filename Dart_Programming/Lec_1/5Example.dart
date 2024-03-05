import 'dart:io';

void main()
{
  var age;
  print("Enter Your Age : ");
  age=int.parse(stdin.readLineSync()!);
  (age >18 && age < 100) ? print("You are Human") : print("You are Gost");
}