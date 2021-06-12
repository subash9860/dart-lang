// every
//where
// signlewhere


main() {
  var name;
  var age;
  List<Map> users = [
    {name:'subash',age: 20},
    {name:'DEV',age: 21},
    {name:'sagar',age: 19},
    {name:'hari',age: 18},
  ];

  var isEighteenAndOver = users.every((user) => user[age] >= 18);
  print(isEighteenAndOver);

  var hasNameWithLetterA =
      users.every((user) => user.toString().startsWith("A"));
  print(hasNameWithLetterA);

  var oveTwenty = users.where((user) => user[age] > 20);
  print(oveTwenty.length);

  var underEighteen = users.singleWhere((user) => user[age] == 18);
  print(underEighteen);
}