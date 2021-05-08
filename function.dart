void withoutReturnValue() {
  print("We cannot return any value from this function.");
}

int anIntegerReturnFunc() {
  int num = 10;
  return num;
}

//using Fat Arrow
String stringReturnFunc(String name, String address) =>
    "This is $name and this is $address and we have used the Fat arrow method";

main() {
  withoutReturnValue();
  var returnInt = anIntegerReturnFunc();
  print("We are returing an interger: $returnInt");
  print(stringReturnFunc("subash", "pyuthan"));
}
