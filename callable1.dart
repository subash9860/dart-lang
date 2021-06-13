// instance of a class can be called like a function by implementing  call() method

class WantToBeFunc {
  call(String name, String location, String message) =>
      '$name $location $message!';
}

main() {
  var callableClass = new WantToBeFunc();
  var callTheVariable = callableClass(
      "subash", "pyuthan ", "This is callable class as function ");
  print("$callTheVariable");
}
