import 'package:flutter/material.dart';

void main() {
  runApp(const PongstarsApp());
}

class PongstarsApp extends StatelessWidget {
  const PongstarsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pongstars',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PongstarsHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class PongstarsHomePage extends StatefulWidget {
  const PongstarsHomePage({super.key, required this.title});

  final String title;

  @override
  State<PongstarsHomePage> createState() => _PongstarsHomePageState();
}

class _PongstarsHomePageState extends State<PongstarsHomePage> {
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
