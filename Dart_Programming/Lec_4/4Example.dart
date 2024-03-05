import 'dart:io';

class A{
  var name,age;
  A(this.name,this.age){
    print("Hello $name");
    print("this is your age $age");
  }
}

void main()
{
  var name,age;
  print("Enter your name for tickets : ");
  name = stdin.readLineSync()!;
    print("Enter your age duration : ");
    age= int.parse(stdin.readLineSync()!);

    var obj =A(name, age);
  }