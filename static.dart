// static variables ad method consume less memory
// they are lacily initialized

class Circle {
  static const pi = 3.14;
  static void drawACircle() {
    // from static method you cannot call a normal function
    print(pi);
  }

  void aNonStaticFunc() {
    // from a normal function or method you can call a static method
    Circle.drawACircle();
    print("This is normal function");
  }
}

main(List<String> arguments) {
  var circle = Circle();
  circle.aNonStaticFunc();
  Circle.drawACircle();
  print(Circle.pi);
}
