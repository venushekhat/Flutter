import 'dart:io';

void main()
{
  var num;
  print("Enter Your age : ");
  num=int.parse(stdin.readLineSync()!);
  (num > 18)?print("true"):print("false");
}