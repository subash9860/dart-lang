class Animal {
  String name = "Animal";
  Animal(){
    print("I am Animal class constructor.");
  }
  Animal.namedConstructor(){
    print("This is parent animal named constructor.");
  }
  void showName(){
    print(this.name);
  }
  void eat(){
    print("Animals eat everything depending on what type itis.");
  }
}
class Cat extends Animal {
  //overriding parent constructor
  //although constructors are not inherited
  Cat() : super(){
    print("I am child cat class overriding super Animalclass.");
  }

  Cat.namedCatConstructor() : super.namedConstructor(){
    print("The child cat named constructor overrides the parent animal named constructor.");
  }
  @override // method overriding
  void showName(){
    print(this.name);
  }
  @override
  void eat(){
    super.eat();
    print("Cat doesn't eat vegetables..");
  }
}
main(List<String> arguments){
  var cat = Cat();
  cat.name = "Meaow";
  cat.showName();
  cat.eat();
  Cat.namedCatConstructor();
}