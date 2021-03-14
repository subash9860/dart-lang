// this is comment sign
//Boolean
void main() {
 bool isOn;
  bool isMan = true;
  print('isOn =${isOn}');
  print('isOn is a ${isOn.runtimeType}');
  print('isOn =${isMan}');
  print('isOn is a ${isMan.runtimeType}');

   // Number
  num age = 0;
  int people = 6;
  double temp = 30.6;

  int test = int.parse('10');
  print(test);

  // testing error
  int err = int.parse('12.09', onError: (source) => null);
  print('err= ${err}');
}