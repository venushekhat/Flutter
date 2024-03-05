import 'dart:io';

class A{
  A(int age ,String name)
  {
    print("Hello user $name");
    if(age > 18)
    {
      print("You Can Use This App");
    }
    else
    {
      print("You Can't Use this app");
    }
  }
}

void main(){
  var name,age;
  print("Enter Your Name here : ");
  name=stdin.readLineSync()!;
  print("Enter Your age here : ");
  age=int.parse(stdin.readLineSync()!); 
  var obj = A(age, name);
}