// Set <type> set name = {};
// var setname = <Type> {};

void setFunction() {
  // set is an undered collection of uniue iteams
  // cannot get elements by index scince the items are unordered
  // 1. method of creating set
  Set<String> countries = Set.from(['Nepal', 'USA', 'UK']);
  Set<int> numbers = Set.from([1, 2, 3]);
  Set<int> moreNumbers = Set();
  moreNumbers.add(10);
  moreNumbers.add(20);
  moreNumbers.add(30);

  //  1. method
  for (int element in numbers) {
    print(element);
  }
  print("==================");

  // 2.method
  countries.forEach((e) => print('$e'));
  print("===============");
  for (int element in moreNumbers) {
    if (moreNumbers.lookup(element) == 10) {
      print(element);
      break;
    }
  }

  var fruitCollection = {'Mango', 'Apple', 'Banana'};
  print(fruitCollection.lookup('Something else'));

  // it gives null
  // lists
  List fruitColections = ['mango', 'apple', 'banana'];
  var myintergers = [1, 2, 3, 'non-integer object'];
  print(myintergers[3]);
  print(fruitColections[0]);
}

main(List<String> arguments) {
  setFunction();
}
