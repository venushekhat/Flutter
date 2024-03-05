class A {
  void display() {
    print("This is your parent class..");
  }
}

class B extends A {
  void display1() {
    print("This is your child class..");
  }
}

class C extends A {
  void display2() {
    print("This is your second child class..");
  }
}

void main() {
  var obj = B();
  var obj1 = C();
  obj.display();
  obj.display1();
  obj1.display();
  obj1.display2();
}
