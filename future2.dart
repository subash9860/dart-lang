// code 8.11
import 'dart:async';

void main() {
  Future<int>.delayed(Duration(seconds: 6), () {
    return 100;
  }).then((value) {
    print(value);
  }).catchError(
    (onError) {
      print('Caught $onError');
    },
    test: (onError) => onError.runtimeType == String,
  ).whenComplete(() => print("Process complete."));
  print("The main UI threads is waiting.");
}
