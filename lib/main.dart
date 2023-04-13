import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculator'),
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
 
  TextEditingController bil1 = TextEditingController();
  TextEditingController bil2 = TextEditingController();
  int? result = 0, num1 = 0, num2 = 0;

  add() {
    setState(() {
      num1 = int.parse(bil1.text);
      num2 = int.parse(bil2.text);
      result = num1! + num2!;
    });
  }

  subtract() {
    setState(() {
      num1 = int.parse(bil1.text);
      num2 = int.parse(bil2.text);
      result = num1! - num2!;
    });
  }

  multiply() {
    setState(() {
      num1 = int.parse(bil1.text);
      num2 = int.parse(bil2.text);
      result = num1! * num2!;
    });
  }

  divide() {
    setState(() {
      num1 = int.parse(bil1.text);
      num2 = int.parse(bil2.text);
      result = num1! ~/ num2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Result : $result ',
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: bil1,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 223, 220, 220),
                    filled: true,
                    hintText: "Enter first number")),
            SizedBox(
              height: 30,
            ),
            TextField(
                controller: bil2,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 223, 220, 220),
                    filled: true,
                    hintText: "Enter second number")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                add();
                bil1.clear();
                bil2.clear();
              },
              child: Text('ADD'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 144, 170, 224)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                subtract();
                bil1.clear();
                bil2.clear();
              },
              child: Text('SUBTRACT'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 144, 170, 224)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                multiply();
                bil1.clear();
                bil2.clear();
              },
              child: Text('MULTIPLY'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 144, 170, 224)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                divide();
                bil1.clear();
                bil2.clear();
              },
              child: Text('DIVIDE'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 144, 170, 224)),
            )
          ],
        ),
      ),
    );
  }
}