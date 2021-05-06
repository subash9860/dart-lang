void main() {
  bool isOn = false ;
  bool isMan = true;
  print('isOn =${isOn}');
  print('isOn is a ${isOn.runtimeType}');
  print('isOn =${isMan}');
  print('isOn is a ${isMan.runtimeType}');
  
  // Number
  int age = 44;
  int people = 6;
  double temp = 30.6;
  
  print('Age:${age}');
  print("Pepople:${people}");
  print("Temp:${temp}");
  
  int test = int.parse('10');
  print(test);

  // testing error
  int err = int.parse('12.09');
  print('err= ${err}');
}
