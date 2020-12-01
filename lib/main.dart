import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Woolha.com Flutter Tutorial',
      home: _DisableCaptureExample(),
    );
  }
}

class _DisableCaptureExample extends StatefulWidget {
  _DisableCaptureExampleState createState() => _DisableCaptureExampleState();
}

class _DisableCaptureExampleState extends State<_DisableCaptureExample> with TickerProviderStateMixin {

  initState() {
    super.initState();
    disableCapture();
  }

  Future<void> disableCapture() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Woolha.com Flutter Tutorial'),
      ),
      body: Center(
        child: Text('Woolha.com Disable Capture'),
      ),
    );
  }
}