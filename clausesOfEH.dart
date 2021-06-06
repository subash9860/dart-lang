class InputExcetion implements Exception {
  String customException() {
    return "The input of negative number is not valid.";
  }
}

void main() {
  // ON cluse is used when the expection is known
  try {
    var res = 4 ~/ 0;
    print("THe result : $res");
  } on IntegerDivisionByZeroException {
    print("You cannot divide by zero , the value is undefined.");
  }

  // CATCH cluse is used when exception is unlnown
  try {
    var res = 3 ~/ 0;
    print("The result is $res");
  } catch (e) {
    print("The excaption thrown is $e");
  }

  // STACK TRACE is used to know the steps of the events
  // these events took place berfore the actual Exceptionn was thrown

  try {
    int res = 10 ~/ 0;
    print("The result is $res");
  } catch (e, s) {
    print("The exception :$e");
    print("Stack trace is \n $s");
  }

  // FINALLY clause is always Executed
  // whether exception is thrown or not
  try {
    int res = 9 ~/ 0;
    print("The result : $res");
  } catch (e) {
    print("The exception: $e");
  } finally {
    print("The finally clause is always executed.");
  }

  // we can make our Custom Exception By creating a class
  try {
    inputValue(-14);
  } catch (e) {
    print(e);
  } finally {
    print("the finally clause is alays executed");
  }
}

void inputValue(int inputNumber) {
  if (inputNumber < 0) {
    var inputException = InputExcetion();
    throw inputException;
  }
}
