import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  String volume = "";
  bool isHovering = false;
  bool pressed = true;
  bool wtf = false;
  void _addNumber(String number) {
    setState(() {
      if (volume.length <= 3) {
        // This call to setState tells the Flutter framework that something has
        // changed in this State, which causes it to rerun the build method below
        // so that the display can reflect the updated values. If we changed
        // _counter without calling setState(), then the build method would not be
        // called again, and so nothing would appear to happen.
        volume += number;
      }
    });
  }

  void _deleteNumber() {
    setState(() {
      if (volume.length > 1) {
        // This call to setState tells the Flutter framework that something has
        // changed in this State, which causes it to rerun the build method below
        // so that the display can reflect the updated values. If we changed
        // _counter without calling setState(), then the build method would not be
        // called again, and so nothing would appear to happen.
        volume = volume.substring(0, volume.length - 1);
      } else {
        volume = "";
      }
    });
  }

  Widget textContainer() {
    return Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(610, 70, 50, 30),
        child: Container(
          width: 380,
          height: 80,
          color: Colors.grey,
          child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                  child: Text(
                      volume.length > 1
                          ? volume.substring(0, volume.length - 1) +
                              "." +
                              volume.substring(volume.length - 1, volume.length)
                          : volume.isNotEmpty
                              ? "0." + volume
                              : "0.0",
                      style: const TextStyle(fontSize: 40)))),
        ));
  }

/*
  Widget test(String idx) {
    return // Figma Flutter Generator Rectangle1Widget - RECTANGLE
        // Figma Flutter Generator Group1Widget - GROUP
        // Figma Flutter Generator Group1Widget - GROUP
        FloatingActionButton.extended(
      onPressed: () {
        // Add your onPressed code here!
      },
      label: Text(idx, style: const TextStyle(color: Colors.white)),
      backgroundColor: Colors.black,
    );
  }
*/

  Widget test3(String idx) {
    return AnimatedButton(
      width: 120,
      height: 120,
      duration: 10,
      shadowDegree: ShadowDegree.dark,
      color: Colors.blueGrey,
      child: Text(
        idx,
        style: const TextStyle(
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.w800,
        ),
      ),
      onPressed: () {
        _addNumber(idx);
      },
    );
  }

  Widget deleteButton() {
    return AnimatedButton(
      width: 120,
      height: 120,
      duration: 10,
      shadowDegree: ShadowDegree.dark,
      color: Colors.blueGrey,
      child: const Icon(Icons.backspace, size: 40, color: Colors.white),
      onPressed: () {
        _deleteNumber();
      },
    );
  }

  Widget startButton() {
    return AnimatedButton(
      width: 120,
      height: 120,
      duration: 10,
      shadowDegree: ShadowDegree.dark,
      color: Colors.blueGrey,
      child: const Icon(Icons.arrow_right, size: 100, color: Colors.green),
      onPressed: () {},
    );
  }

  Widget stopButton() {
    return AnimatedButton(
      width: 120,
      height: 120,
      duration: 10,
      shadowDegree: ShadowDegree.dark,
      color: Colors.blueGrey,
      child: const Icon(Icons.stop, size: 50, color: Colors.red),
      onPressed: () {},
    );
  }

  Widget pauseButton() {
    return AnimatedButton(
      width: 120,
      height: 120,
      duration: 10,
      shadowDegree: ShadowDegree.dark,
      color: Colors.blueGrey,
      child: const Icon(Icons.pause, size: 50, color: Colors.white),
      onPressed: () {},
    );
  }

  Widget quantumButton() {
    return AnimatedButton(
      width: 120,
      height: 120,
      duration: 10,
      shadowDegree: ShadowDegree.dark,
      color: Colors.blueGrey,
      child: Image.asset('images/Temp_65.png'),
      onPressed: () {},
    );
  }

  Widget temperatureButton() {
    return AnimatedButton(
      width: 120,
      height: 120,
      duration: 10,
      shadowDegree: ShadowDegree.dark,
      color: Colors.blueGrey,
      child: Image.asset('images/Amount_65.png'),
      onPressed: () {},
    );
  }

  Widget tapButton() {
    return AnimatedButton(
      width: 120,
      height: 120,
      duration: 10,
      shadowDegree: ShadowDegree.dark,
      color: Colors.blueGrey,
      child: Image.asset('images/tap.png'),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    double space = 8;

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Colors.grey[800],
        body: Stack(children: <Widget>[
          textContainer(),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(600, 150, 50, 30),
            child: Column(children: <Widget>[
              SizedBox(
                height: space,
              ),
              Row(children: <Widget>[
                SizedBox(width: space),
                test3("1"),
                SizedBox(width: space),
                test3("2"),
                SizedBox(width: space),
                test3("3"),
                SizedBox(width: space),
                temperatureButton(),
              ]),
              SizedBox(
                height: space,
              ),
              Row(children: <Widget>[
                SizedBox(width: space),
                test3("4"),
                SizedBox(width: space),
                test3("5"),
                SizedBox(width: space),
                test3("6"),
                SizedBox(width: space),
                quantumButton(),
              ]),
              SizedBox(
                height: space,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Row(children: <Widget>[
                  SizedBox(width: space),
                  test3("7"),
                  SizedBox(width: space),
                  test3("8"),
                  SizedBox(width: space),
                  test3("9"),
                  SizedBox(width: space),
                  startButton(),
                ]),
              ),
              SizedBox(
                height: space,
              ),
              Row(children: <Widget>[
                SizedBox(width: space),
                deleteButton(),
                SizedBox(width: space),
                test3("0"),
                SizedBox(width: space),
                tapButton(),
                SizedBox(width: space),
                stopButton(), //pauseButton(),
              ]),
            ]),
          ),
        ]));
  }
}
