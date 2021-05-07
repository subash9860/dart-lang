import 'dart:io';
void main() {
  var marks = stdin.readLineSync();
  switch (marks) { // switch case is same as c
    case "A":
      print("very Good");
      break; // break is same as c 
    case "B":
      print("Good");
      break;
    case "C":
      print("Fair");
      break;
  }
}
