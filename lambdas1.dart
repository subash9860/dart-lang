class Cart {
  // longhand lamdas function
  Function ourReturnPolicy = (String messageTocustomer) {
    return messageTocustomer;
  };
  // shorthand 
  var returnUpdateCusomer = (String updateCustomer) => updateCustomer;
  // => is fat arrow notation
}

main() {
  var cart = Cart();
  print(cart.ourReturnPolicy("Please read our policy"));
  print(cart.returnUpdateCusomer("Your item has been shipped."));
}
