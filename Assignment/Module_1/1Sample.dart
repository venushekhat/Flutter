//print the user name,birthdaydate,age and address from user input...

import 'dart:io';
void main() {
  String name, birthdayDate, address;
  int age;
  
  print("Enter Your Name: "); //name
  name = stdin.readLineSync()!;

  print("Enter Your Birthdate (YYYY-MM-DD): "); //birthdayDate
  birthdayDate = stdin.readLineSync()!;

  print("Enter Your Age: "); //age
  age = int.parse(stdin.readLineSync()!);

  print("Enter Your Address: "); //address
  address = stdin.readLineSync()!;

//print to all user input values
  print("Name: $name");
  print("Birthdate: $birthdayDate");
  print("Age: $age");
  print("Address: $address");
}
