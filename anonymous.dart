// lambdas is an anonymous function
class Aboutlambdas {
  // first way of expressing lambda or anonymous function
  Function addingNUmbers = (int a, int b) {
    var sum = a + b;
    return sum;
  };
  Function multiplyWithEight = (int num) {
    return num * 8;
  };

  // second way of expressing lambdas by fat arrow
  Function showName = (String name) => name;

  // hiher order functions pass function as parameter
  higherOderFunction(Function myFunction) {
    int a = 10, b = 20;
    print(myFunction(a, b));
  }

  //returning a function
  Function returnAFunction() {
    Function showAge = (int age) => age;
    return showAge;
  }

  // a closure can modify the parent scope
  String anyString = "Any parent String";
  Function overridingParentScope = () {
    String message = "Overriding the parent scope";
    print(message);
  };

  Function show = () {
    // the anonymous function will this originally
    gettingImage() {
      String path = "This is a new path to image.";
      print(path);
    }

    return gettingImage;
  };
}

main() {
  var add = Aboutlambdas();
  var addition = add.addingNUmbers(2, 20);
  print(addition);
  var mul = Aboutlambdas();
  var result = mul.multiplyWithEight(4);
  print(result);
  var name = Aboutlambdas();
  var myName = name.showName("subash");
  print(myName);
  var higher = Aboutlambdas();
  var higherOrder = higher.higherOderFunction(add.addingNUmbers);
  higherOrder;
  var showAge = Aboutlambdas();
  var showingAge = showAge.returnAFunction();
  print(showingAge(20));
  var sayMessage = Aboutlambdas();
  sayMessage.overridingParentScope();
  var image = Aboutlambdas();
  String path = "This is an old path.";
  var imagePath = image.show();
  imagePath();
}
