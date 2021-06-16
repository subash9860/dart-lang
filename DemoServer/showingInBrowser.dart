import 'dart:io';
import 'dart:async';

final File myFile = File("index.html");

Future main() async {
  var myServer = await HttpServer.bind('127.0.0.1', 8080);
  print("The server is alive on the above mentioned port and it's listening"
      "on ${myServer.port}/");

  // we are going to use the await from dart async library
  await for (HttpRequest myRequest in myServer) {
    if (await myFile.exists()) {
      print("We 're going to server ${myFile.path}");
      myRequest.response.headers.contentType = ContentType.html;
      await myFile.openRead().pipe(myRequest.response);
    }
  }
}
