class Cart {
  // Anonymous Function Inside a Cart Class
  Function addingTwoItems = (int item1, int item2) {
    var sum = item1 + item2;
    return sum;
  };
  // here, we are passing parameters to the variable addingTwoItems.

}

void main() {
  var c = Cart();
  print(c.addingTwoItems(3,4));
}
