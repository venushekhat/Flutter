class A{
  var name,age;
  void setName(String abc){
    this.name = abc;
  }
  String getName(){
    return name;
  }
  void setAge(int xyz){
    this.age = xyz;
  }
  int getAge(){
    return age;
  }
}

void main()
{
  var obj = A();
  obj.setAge(25);
  obj.setName("Vishva");
  print(obj.getAge());
  print(obj.getName());
}