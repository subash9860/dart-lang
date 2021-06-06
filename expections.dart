main(List<String> arguments) {
  try {
    int result = 10 ~/ 0;
    print("The result is $result");
  } on IntegerDivisionByZeroException {
    print("We cannot divide by Zero");
  }
  try {
    int result = 10 ~/ 0;
    print("THe result is $result");
  } catch (e) {
    print("The exception is : $e");
  } finally {
    print("This is finally and it always is executed.");
  }
}
