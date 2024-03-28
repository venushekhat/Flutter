import 'dart:io';

class A {
  int display() {
    print("Enter first number: ");
    var num1 = int.parse(stdin.readLineSync()!);

    print("Enter the second number: ");
    var num2 = int.parse(stdin.readLineSync()!);

    return num1 + num2;
  }
}

class B extends A {
  void display1() {
    var ans = display();
    print("This is your sum: $ans");
  }
}

class C extends B {}

void main() {
  var obj = C();
  obj.display1();
}
