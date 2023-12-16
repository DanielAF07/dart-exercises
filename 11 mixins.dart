void main() {
  final flipper = Dolphin();
  flipper.swim();

  final batman = Bat();
  batman.walk();
  batman.fly();

  final namor = Duck();
  namor.walk();
  namor.fly();
  namor.swim();
}

abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin Walker {
  void walk() {
    print('Walking');
  }
}

mixin Swimmer {
  void swim() {
    print('Swimming');
  }
}

mixin Flyer {
  void fly() {
    print('Flying');
  }
}

// Mammal
class Dolphin extends Mammal with Swimmer {}

class Bat extends Mammal with Walker, Flyer {}

class Cat extends Mammal with Walker {}

// Bird
class Dove extends Bird with Walker, Flyer {}

class Duck extends Bird with Walker, Flyer, Swimmer {}

// Fish
class Shark extends Fish with Swimmer {}

class FlyingFish extends Fish with Swimmer, Flyer {}
