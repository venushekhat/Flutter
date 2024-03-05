class A{
  void display(){
    print("this is your Parent class");
  }
}

class B extends A {
  void display1(){
    print("This is your child class");
  }
}

void main()
{
  var obj = B();
  obj.display();
  obj.display1();
}