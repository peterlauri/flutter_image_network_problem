import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ImageScreen(),
            ),
          ),
          child: Text(
            'Go to screen2',
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('screen1'),
      ),
    );
  }
}

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network('https://picsum.photos/250?image=9'),
      ),
      appBar: AppBar(
        title: Text('screen2'),
      ),
    );
  }
}
