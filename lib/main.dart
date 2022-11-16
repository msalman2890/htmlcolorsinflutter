import 'package:flutter/material.dart';
import 'extensions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HTML/Hex Color',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'HTML/Hex Color'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "#ABCD47".toColor(),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Hex/HTML Colors in Flutter as String without any Package",
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
