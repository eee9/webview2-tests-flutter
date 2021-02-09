import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          //visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            body: WebViewLoad()
        )
    );
  }
}

class WebViewLoad extends StatefulWidget {
  WebViewLoadUI createState() => WebViewLoadUI();
}

class WebViewLoadUI extends State<WebViewLoad>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('r03, L29. webview_flutter')),
        body: WebView(
          initialUrl: new Uri.dataFromString(html, mimeType: 'text/html').toString(),
          javascriptMode: JavascriptMode.disabled,
        )
    );
  }
}

const String html = '''
<html>
<body>
  Hi in html.
</body>
</html>
''';