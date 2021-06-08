// returning a function
Function DividingByFour() {
  Function LetUsDivide = (int x) => x ~/ 4;
  return LetUsDivide;
}

void main() {
  print(42.6774 ~/ 4); // ~/ truncating division
  var result = DividingByFour();
  print(result(59));

}
