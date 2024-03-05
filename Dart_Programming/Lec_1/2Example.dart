import 'dart:io';

void main()
{
  var name,age;
  print("Enter Name : ");
  name=stdin.readLineSync()!;
  print("Enter age :");
  age=int.parse(stdin.readLineSync()!);
  print("User Name is $name  ");
  print("User age Was  $age");
}