

import 'dart:io';

class A {
  var  num1;
   var num2;

  void display() {
    print("Enter Your Number Here : ");
    num1 = int.parse(stdin.readLineSync()!);
    print("Enter Your Number Here : ");
    num2 = int.parse(stdin.readLineSync()!);
  }
}

class B extends A {
  void display1() {
    print("Enter Your Number Here : ");
    super.num1 = int.parse(stdin.readLineSync()!); 
    print("Enter Your Number Here : ");
    super.num2 = int.parse(stdin.readLineSync()!); 
    print("Sum of the numbers: ${num1 + num2}");
  }
}

class C extends B {
  void display2() {
    super.display1(); 
    print("This is your answer. ");
    print("Sum of the numbers: ${super.num1 + super.num2}"); 
  }
}

void main() {
  var obj = C();
  obj.display2();
}
