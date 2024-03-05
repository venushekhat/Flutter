import 'dart:io';

void main()
{
  var age;
  print("Enter Your Age : ");
  age=int.parse(stdin.readLineSync()!);
  if(age > 18)
  {
    print("You Can Go Inside");
  }
}