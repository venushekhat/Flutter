import 'dart:io';

void main()
{
  var age;
  print("Enter Your Age :");
  age=int.parse(stdin.readLineSync()!);
  if(age > 22)
  {
    print("You Buy Your Own House");
  }
  else
  {
    print("You are a kid Dont Buy Your Own House");
  }
}