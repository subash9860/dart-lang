// code 8.9
import 'dart:async';

void main() {
  Future<int>.delayed(
    Duration(seconds: 6),
    () {
      return 200;
    },
  ).then((value) => print(value));
  print("Wait for a value for 6 seconds....");
}
