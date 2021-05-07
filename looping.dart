main() {
//StringBuffer Allows for the incremental building of a string using write*() methods.
//The strings are concatenated to a single string only when toString is called.
  var proverb = StringBuffer('As Dark as Dungeon .');
  for (var x = 0; x <= 10; x++) {
    proverb.write('!');
    print(proverb);
  }

//iterating set and map
// forEach(key : value ) whichn wroks like a for loop
  Set myset = {1, 2, 3, 4, 5};
  var mymap = {
    1: 'tv',
    2: 'frige',
    3: 'table',
    4: 'table',
    5: 'laptop',
  };

  myset.forEach((element) {
    print(element);
  });

  mymap.forEach((key, value) {
    print('$key : $value');
  });

// we can use for loop as python also like using in in foor loop
  var mycollection = ['ram', 'sam', 'hari', 4, 5];
  for (var x in mycollection) {
    print(x);
  }

// while
  print('for while loop');

  int x = 0;
  while (x <= 10) {
    print(x);
    x++;
  }

  print('for do while:');
  do {
    print(x);
    x++;
  } while (x < 20);
}
