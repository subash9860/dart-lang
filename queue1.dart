//queue is useful when you try to bulid a collection that can be added
//from one end and can be deleted from another end. The values are
//removes or read using an index based on the order of their insertion.

import 'dart:collection';
//we are about to import some extra methods from collection library

main() {
  Queue myQueue = new Queue();
  print("Defult implementation ${myQueue.runtimeType}");

  myQueue.add("Subash");
  myQueue.add("20");
  myQueue.add("Pyuthan");
  myQueue.add("Subashkc@gmail.com");
  for (var allTheValues in myQueue) {
    print(allTheValues);
  }
  print("--------------");

  print("we are removing the first element ${myQueue.elementAt(0)}");

  myQueue.removeFirst();
  for (var allTheValues in myQueue) {
    print(allTheValues);
  }
  print("------------");

  print("We are removing the last element ${myQueue.elementAt(2)}");
  myQueue.removeLast();

  for (var all in myQueue) {
    print(all);
  }
}
