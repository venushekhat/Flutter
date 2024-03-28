class A{
  void dispaly(){
    print("This is your parent class method ");
  }
}

class B extends A {
  void dispaly1(){
    print("This is your first child class ");
  }
}
class C extends A{
  void display2(){
    print("This is your second child class ");
  }
}

void main(){
  var obj = B();
  var obj1=C();
  obj.dispaly1();
  obj.dispaly();
  obj1.dispaly();
  obj1.display2();
}