// callable3.dart
// whne dart class is callbale like a function , use call() function
class Person {
  String name = '';
  String call(String message, name) {
    return "This message : '$message', has been passed to the person $name .";
  }
}

main() {
  var subash = Person();
  subash.name = "Subash kc";
  String name = subash.name;
  String msgAndName = subash("Hi subash how are you?", name);
  print(msgAndName);
}
