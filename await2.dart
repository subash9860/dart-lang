// code 8.7
import 'dart:async';

// our all operations will use tha main UI thread
// since dart and flutter are single threads we need to use Future , Async and Await APIs
// however, we have not used it here and got the future object insted of heslines

void main() {
  // tha main UI therad starts sfter that the heavy operations will take place
  print("The main UI thread is starting on here.");
  print("Now it will take 10 seconds to display news headlines.");
  displayNews();
  print("The main UI thread ends.");
  // this program remains incomplate, we don't get the result
  // it is because the main UI thread is overlapping before 10 seconds
  // therfore we need await and async API to block main UI thraed for 10 seconds
}

// this is where our heavy operations are taking place
Future<String> checkingNewsAPP() {
  // since we are returning a string value
  // by delaying the main UI threads for 10  seconds
  Future<String> delyingTenSeconds = Future.delayed(Duration(seconds: 10), () {
    return "The latest headline are displayed hered after fo seconds.";
  });
  //after 10 second the news headlines will be displayed
  return delyingTenSeconds;
}

void displayNews() async {
  // here we will primarily displat the news headline
  String displayingNewsHeadlines =await checkingNewsAPP();
  print("Displaying news headlines here: $displayingNewsHeadlines");
}
