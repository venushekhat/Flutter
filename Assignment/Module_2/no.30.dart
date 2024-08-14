class Animal {
  void makeSound() {
    print('Some sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Bark');
  }
}

void printSound(Animal animal) {
  animal.makeSound();
}

void main() {
  Dog dog = Dog();
  printSound(dog); // Dog is a subclass of Animal, so this works
}
class Parent {
  static int staticValue = 10;

  static void staticMethod() {
    print('Static method in Parent');
  }
}

class Child extends Parent {
  // Static members of Parent are inherited
}

// void main() {
//   print(Parent.staticValue); // Access static member via superclass
//   Parent.staticMethod(); // Call static method via superclass

//   print(Child.staticValue); // Access static member via subclass
//   Child.staticMethod(); // Call static method via subclass
// }
