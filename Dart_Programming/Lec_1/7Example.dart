import 'dart:io';

void main()
{
  var num;
  print("Enter the number :");
  num=int.parse(stdin.readLineSync()!);
  print(num++);
  print(num++);

}