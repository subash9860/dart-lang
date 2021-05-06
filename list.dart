main() {
  // List are same as array which is order
  List fruit = ['Mango', 'Apple', 'Pineapple'];
  print(fruit[0]);

  // Set is un ordered collection of data

  var veg = {'cauli flower', 'patatoes', ' Tamatos'};
  print(veg.lookup('patatoes'));
  print(veg.lookup('Not in here it say null'));

  // Map 
  var myProduct = {
    'first' : 'TV',
    'second' : 'Refrigerator',
    'third' : 'Mobile',
    'fourth' : 'Tablet',
    'fifth' : 'Computer'
  };
  print(myProduct['third']);

  Set mySet = {1, 2, 3};
  var myProducts = {
    1 : 'TV',
    2 : 'Refrigerator',
    3 : mySet.lookup(2),
    4 : 'Tablet',
    5 : 'Computer'
  };
  print(myProducts[3]);
}
