class A {
  void display() {
    print("This is parent class");
  }
}

class B extends A {
  void display1() {
    print("This is first child class..");
  }
}

class C extends A {
  void display2() {
    print("This is your second child class..");
  }
}

void main() {
  var obj1 = B(); 
  var obj2 = C(); 
  obj1.display1(); 
  obj2.display2(); 
}
