/*1
1.1. Create a Base Class
Define a class Animal with a method makeSound() that prints "Some sound".
Create a subclass Dog that overrides makeSound() to print "Bark!".
1.2. Add Properties
Modify Animal to include a name property (initialized via constructor).
Create a subclass Cat that initializes name and overrides makeSound().
*/

void main() {
  Cat cat = Cat();
  cat.name = "sonya";
  print(cat.name);
  cat.makeSound();
}

class Animal {
  makeSound() {
    print("Some sound");
  }

  String? name;
}

class Dog extends Animal {
  @override
  makeSound() {
    print("Bark!");
  }
}

class Cat extends Animal {
  @override
  makeSound() {
    print("Meaw");
  }
}

/*2.1. Use super Keyword
Create a class Vehicle with a method start() that prints "Vehicle started".
Create a subclass Car that calls super.start() and adds "Car is ready to go!".
*/
void main() {
  Car lada = Car();
  lada.start();
}

class Vehicle {
  start() {
    print("Vehicle started");
  }
}

class Car extends Vehicle {
  @override
  start() {
    super.start();
    print("Car is ready to go!");
  }
}


/*
3.1. Method Overriding & Constructor Chaining
Create Person with a constructor that prints "Person created".
Create Student that extends Person and prints "Student created" using super.
*/

void main() {
  Student s1 = Student();
}

class Person {
  person() {
    print("Person created");
  }
}

class Student extends Person {
  Student() : super() {
    print("Student created");
  }
}


/*
4 . Using Mixins
4.1Create a mixin Swimming with a method swim().
4.2Apply it to Fish and Duck classes.
4.3 Multiple Mixins in One Class
Create two mixins: Flying (fly()) and Singing (sing()).
4.4 Apply both to a Bird class.
*/
void main() {
  Fish F1 = Fish();
  F1.swim();

  Duck D1 = Duck();
  D1.swim();

  Bird B1 = Bird();
  B1.fly();
  B1.sing();
}

mixin Swimming {
  swim() {
    print('can swim');
  }
}

class Fish with Swimming {}

class Duck with Swimming {}

mixin Flying {
  fly() {
    print("can fly");
  }
}
mixin Singing {
  sing() {
    print("can sing");
  }
}

class Bird with Flying, Singing {}
