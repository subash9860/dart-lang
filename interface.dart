// interface in dart is a class , but we don't extend we implement it

class Vehicle {
  void steerTheVehicle() {
    print("The Vehicle is moving.");
  }
}

class Engine {
  // in the interface
  final  _name; // final means single assignment and it must have an initializer as i use here not it the interface, since it is a constructor
  Engine(this._name);
  
  String lessOilConsumption() {
    return "It consumes less oil.";
  }
}

class Car implements Vehicle , Engine {
  var _name;
  
  void steerTheVehicle() {
    print("The car is moving.");
  }

  String lessOilConsumption() {
    return "This model of car consumes less oil.";
  }

  void ridingExperience() =>
      print("this car gives good ride, because it is an ${this._name}");
}

main(List<String> arguments) {
  var car = Car();
  car._name = "Tesla";
  print("Car name : ${car._name}");
  car.steerTheVehicle();
  car.lessOilConsumption();
  car.ridingExperience();
}
