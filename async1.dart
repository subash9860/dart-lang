import 'dart:async';

// our all operations will use the main UI thread
// since dart and flutter are single threaded we need to use Futer, Async and Awaits APIs
void main() {
  // the main UI threads starts after that the heavy operations will take place
  print("The main UI thread is starting on here.");
  print("Now it will take 10 seconds to display new headlines.");
  displayNews();
  print("The mains UI thread ends.");
  // this program remains incomplete, we don't get the result
  // it is because the main UI therad is overlapping before 10 seconds
}

// this is where our heavy operations are taking place
Future<String> checkingNewsApp() {
  // since we are returning a string value
  // by delaying the main UI threas for 10 seconds
  Future<String> delayingTenSeconds = Future.delayed(Duration(seconds: 10), () {
    return "The latest headlines are displayed here after 10 seconds.";
  });
  // after 10 seconds the news headlines will be displayed
  return delayingTenSeconds;
}

void displayNews() {
  // here we will primarily display the news headline
  Future<String> displayingNewsHeadlines = checkingNewsApp();
  // inside then we need an anonymous function like lambda or anoymous functions
  displayingNewsHeadlines.then((value) =>
      print("Displaying news headlines here:$displayingNewsHeadlines"));
}
