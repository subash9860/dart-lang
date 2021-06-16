// code 9.3
import 'dart:math' as math;

import 'lib/PowProject.dart';
import 'lib/RelationalOperations.dart' as relation;

main() {
  print("Printing 2 to the power 5 using Dart's bulit-in 'dart:math' library.");
  var int = math.pow(2, 5);
  print(int);
  print(
      "Now we are going to use another 'pow()' funstion from our own library.");
  var anotherPowObject = PowProject();
  anotherPowObject.MultiplyByAGivenNumber(4, 3);
  anotherPowObject.pow(2, 12);
  print(
      "Now we are going to use another library to test the ralational operators.");
  var trueOrFalse = relation.TrueOrFalse();
  trueOrFalse.BetweenTrueOrFalse();
  trueOrFalse.BetwenTrueAndFalse();
}
