import 'dart:io';
import 'dart:async';

Future main() async {
  var myServer = await HttpServer.bind('127.0.0.1', 8080);
  print("The server is alive on the above mentioned port and its's listening"
      "on ${myServer.port}/");

  myServer.listen((HttpRequest myRequest) {
    myRequest.response
      ..write("What's up man , how are you?")
      ..close();
  });
}
