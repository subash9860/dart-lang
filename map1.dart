void mapFunction() {
  // unordered collection of key => value pair
  Map<String, String> countries = Map();
  countries['Nepal'] = "Asia";
  countries["USA"] = "america";
  countries["Germany"] = "Europe";

  // 1. method we can obtain key or value
  for (var key in countries.keys) {
    print("Country's name : $key");
  }
  print("=================");
  for (String value in countries.values) {
    print("Continents name :$value");
  }

  //2. method
  countries
      .forEach((key, value) => print("Country :$key and Continent: $value"));

  // we can update any map vary easily
  if (countries.containsKey("Germany")) {
    countries.update("Germany", (value) => "European Union");
    print("Update country Germany.");
    countries
        .forEach((key, value) => print("Counrty : $key and Continets:$value"));
  }

  // we can remove any counrty
  countries.remove("Brazil");
  countries
      .forEach((key, value) => print("Counrty : $key and Continet: $value"));

  print("Barazil has ben=en removed sucessfully");
  print("============");

  //3. method of creating a map
  Map<String, int> telephoneNum = {
    "john": 1234,
    "Mac": 345,
    "molly": 3455,
    "Koli": 342
  };
  telephoneNum
      .forEach((key, value) => print("Customer:$key and Number:$value"));
}

main() {
  mapFunction();
}
