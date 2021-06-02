// mixins is a way of reusing any class's code in multiple class hierarchies.


class Animal {
  String name = "Animal";
  Animal() {
    print('I am Animal class constructor.');
  }
  Animal.namedConstructor() {
    print("This is parent animal named constructor.");
  }
  void showName() {
    print(this.name);
  }

  void eat() {
    print("Animals eat everything depending on what type ot is.");
  }
}

class Dog {
  void canRun() {
    print("I can run");
  }
}

class Cat extends Animal with Dog {
  //reusing another class
  // overriding parent constructor
  // although constructors are not inherited

  Cat() : super() {
    print("I am child cat class overriding super Animal Class.");
  }
  Cat.namedConstructor() : super.namedConstructor() {
    print(
        "The child cat named constructor overrides the parent animal named constuctor.");
  }
  @override
  void showName() {
    print("hi from cat.");
  }

  @override
  void eat() {
    super.eat();
    print("Cat doesn't eat vegetables.");
  }
}

main(List<String> arguments) {
  var cat = Cat();
  cat.name = "Meanaa";
  cat.showName();
  cat.eat();
  var anotherCat = Cat.namedConstructor();
  anotherCat.canRun();
}
