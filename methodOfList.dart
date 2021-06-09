main() {
  var number1 = 1;
  var number2 = 1;
  while (number2 < 50) {
    print(number2);
    number2 += number1;
    number1 = number2 - number1;
  }

  print("Separator Line : ==========");
  var fibonacciNum = [1, 2, 3, 5, 8, 13, 21, 34];
  print(fibonacciNum.take(3).toList());
  print("===============");
  print(fibonacciNum.skip(5).toList());
  print("================");
  print(fibonacciNum.skip(2).contains(5));
  print("================");
  print(fibonacciNum.take(3).skip(2).take(1).toList());
  print("==================");
  var clonedFibonacciNumbers = List.from(fibonacciNum);
  print("Cloned List : $clonedFibonacciNumbers");
  var mappedNames = fibonacciNum.map((name) => "STARTING $fibonacciNum").toList();
  print(mappedNames);

}
