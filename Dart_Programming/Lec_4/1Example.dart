//parameter constructer

import 'dart:io';

class A{ //creating class
  void display(){ //creating method
    print("This is your a class "); //body of method
  }
  void display1(int num1,int num2){ //passed arguement in methods
    var sum = num1+num2;
    print("This is your class secound methods"); //body of methods
    print("This is  your total of two variables : $sum");
  }
}

void main()
{
  var num1,num2;
  print("Enter Your First number here : ");
  num1 = int.parse(stdin.readLineSync()!);
  print("Enter Your secound number here : ");
  num2 = int.parse(stdin.readLineSync()!);
  var obj = A(); //creating object
  obj.display(); //calling method using of objects
  obj.display1(num1, num2); //parameter
} 