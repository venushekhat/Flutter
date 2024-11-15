class ParentClass {
  // This method cannot be overridden by subclasses
   void method() {
    print('This is a final method');
  }
}

class ChildClass extends ParentClass {
  // This will cause a compile-time error because method() is final in ParentClass
  @override
  void method() {
    print('Trying to override the final method');
  }
}

void main() {
  ParentClass parent = ParentClass();
  parent.method(); // This will print: This is a final method
  
  ChildClass child = ChildClass();
  child.method(); // This will cause a compile-time error
}
