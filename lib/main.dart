import 'package:flutter/material.dart';
import 'intensions.dart';
import 'campaigns.dart';
import 'issues.dart';
import './property.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delta',
      home: const MyHomePage(title: 'This is Delta Home Page'),
      routes: {
        "": (context) => const MyApp(),
        "intensions": (context) => Intensions(),
        "campaigns": (context) => Campaigns(),
        "issues": (context) => Issues(),
        "findProperty": (context) => Property()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/login.svg',
          semanticsLabel: 'Acme Logo',
          height: 150,
          width: 100,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'User Name',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Password'),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 220),
          width: 150,
          child: ElevatedButton(
            onPressed: () =>
                {Navigator.pushReplacementNamed(context, 'findProperty')},
            child: const Text("Login"),
          ),
        )
      ],
    ));
  }
}
