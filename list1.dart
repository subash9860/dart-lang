// list.dart

void main() {
  // due to null sefty list() is not accepted.
  // it changes to List<Dynamic type> Name of list for growable.
  List<int> growableList = [];
  growableList.add(3);
  growableList.add(4);
  print(growableList);

//

  listFunction() {
    List<int> nameOfTest = [];
    nameOfTest.add(1);
    nameOfTest.add(2);
    nameOfTest.add(3);

// there are three methods to capture th list
// 1. method as python
    for (int element in nameOfTest) {
      print(element);
    }
    print(".............");

    // 2.method forEach gives every elements of list
    nameOfTest.forEach((v) => print("${v}"));
    print(".............");

    // 3. method as c
    for (int i = 0; i < nameOfTest.length; i++) {
      print(nameOfTest[i]);
    }
  }
    print(listFunction());
}
