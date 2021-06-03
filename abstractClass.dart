//we cannot instantiate any abstract class
abstract class volume {
  // we can declare instance variable
  int age = 0;
  void increase();
  void decrease();
  // a normal function
  void anyNormalFunc(int age) {
    print("This is a normal function to know the $age.");
  }
}

class soundSystem extends volume {
  void increase() {
    print("Sound is up.");
  }
}
