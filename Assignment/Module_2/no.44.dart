class Animal {
  void eat() {
    print('Eating...');
  }
}

class Dog extends Animal {
  void bark() {
    print('Barking...');
  }
}

void main() {
  Dog dog = Dog();
  dog.eat(); // This is valid because eat() is defined in the superclass.
  dog.bark(); // This is valid because bark() is defined in the subclass.

  Animal animal = dog;
  animal.eat(); // This is valid because eat() is defined in the superclass.
  // animal.bark(); // This would be invalid because bark() is not defined in Animal.
}
