class Car {
  int carModel = 123;
  String carName = "BMW";
  bool isOn = true;

  bool turnOn(bool turnOn) {
    isOn = turnOn;
    return isOn;
  }

  bool isTurnedOn() {
    return isOn;
  }
}

main() {
  var newCar = new Car();
  newCar.carName = "Red marcedies";
  newCar.carModel = 334;
  newCar.turnOn(true);

  if (newCar.isTurnedOn()) {
    print("${newCar.carName} starts . Its has model number ${newCar.carModel}");
  } else
    print("${newCar.carName} stops . Its has model number ${newCar.carModel}");
}
