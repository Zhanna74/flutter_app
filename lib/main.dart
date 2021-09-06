import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter increment',
      theme: ThemeData(
                backgroundColor: Colors.lightGreen,
      ),
      home: MyHomePage(title: 'Flutter - увеличение на 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Нажмите на кнопку и число увеличится:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(16.0),
            primary: Colors.white,
            backgroundColor: Colors.black ,
            textStyle: const TextStyle(fontSize: 20),
          ),
            onPressed: _incrementCounter,

          child: const Text('КНОПКА ++'),),
          ],
        ),
      ),
    );
  }
}
