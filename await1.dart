import 'dart:async';

void main() {
  print("The main UI thread is starting on here.");
  print("Now it will take 3 second to display the version of Dart.");
  checkVersion();
  print("The main UI thread ends.");
}

  Future<String> checkingVersion() {
    // since we are returning a string value
    // by delaying the main UI thread for 3 seconds
    Future<String> delayingTenSeconds =
        Future.delayed(Duration(seconds: 3), () {
      return "The verssion 2.1 is displayed here after 3 seconds.";
    });

    // after 3 seconds the version will be displayed
    return delayingTenSeconds;
  }

 checkVersion() async {
  String version = await checkingVersion();
  // do something with version
  try {
    print("Displaying version here : $version");
  } catch (e) {
    // React tp inability to look up version
    return e;
  }
}
