import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'package:flutter_svg/parser.dart';
import 'package:google_fonts/google_fonts.dart';
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
        padding: const EdgeInsetsDirectional.fromSTEB(630, 70, 50, 30),
        child: Container(
            width: 373,
            height: 80,
            color: Colors.black,
            alignment: Alignment.bottomRight,
            child: Text(
              volume.length > 1
                  ? volume.substring(0, volume.length - 1) +
                      "." +
                      volume.substring(volume.length - 1, volume.length)
                  : volume.isNotEmpty
                      ? "0." + volume
                      : "0.0",
              style: GoogleFonts.andika(
                  textStyle: TextStyle(fontSize: 40, color: Colors.white)),
            )));
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

  Widget numberButton(String idx) {
    return AnimatedButton(
      width: 90,
      height: 90,
      duration: 10,
      shadowDegree: ShadowDegree.light,
      color: const Color.fromRGBO(49, 49, 49, 2),
      child: Text(
        idx,
        style: GoogleFonts.andika(
            textStyle: const TextStyle(
          fontSize: 40,
          color: Colors.white,
        )),
      ),
      onPressed: () {
        _addNumber(idx);
      },
    );
  }

  Widget deleteButton() {
    return AnimatedButton(
      width: 192,
      height: 90,
      duration: 10,
      shadowDegree: ShadowDegree.dark,
      color: const Color.fromRGBO(49, 49, 49, 2),
      child: const Icon(Icons.backspace, size: 40, color: Colors.white),
      onPressed: () {
        _deleteNumber();
      },
    );
  }

  Widget startButton() {
    return AnimatedButton(
      width: 90,
      height: 90,
      duration: 10,
      shadowDegree: ShadowDegree.dark,
      color: const Color.fromRGBO(49, 49, 49, 2),
      child: Center(
          child: const Icon(Icons.arrow_right, size: 80, color: Colors.green)),
      onPressed: () {},
    );
  }

  Widget stopButton() {
    return AnimatedButton(
      width: 90,
      height: 90,
      duration: 10,
      shadowDegree: ShadowDegree.dark,
      color: const Color.fromRGBO(49, 49, 49, 2),
      child: const Icon(Icons.stop, size: 50, color: Colors.red),
      onPressed: () {},
    );
  }

  Widget pauseButton() {
    return AnimatedButton(
      width: 90,
      height: 90,
      duration: 10,
      shadowDegree: ShadowDegree.dark,
      color: const Color.fromRGBO(49, 49, 49, 2),
      child: const Icon(Icons.pause, size: 50, color: Colors.white),
      onPressed: () {},
    );
  }

  Widget quantumButton() {
    return AnimatedButton(
      width: 90,
      height: 90,
      duration: 10,
      shadowDegree: ShadowDegree.dark,
      color: const Color.fromRGBO(49, 49, 49, 2),
      child: SvgPicture.asset("images/vandkandenice-02.svg",
          width: 120, height: 120),
      onPressed: () {},
    );
  }

  Widget temperatureButton() {
    return AnimatedButton(
      width: 90,
      height: 90,
      duration: 10,
      shadowDegree: ShadowDegree.dark,
      color: const Color.fromRGBO(49, 49, 49, 2),
      child: SvgPicture.asset('images/termometernice-03.svg',
          width: 50, height: 50),
      onPressed: () {},
    );
  }

  Widget tapButton() {
    return AnimatedButton(
      width: 90,
      height: 90,
      duration: 10,
      shadowDegree: ShadowDegree.dark,
      color: const Color.fromRGBO(49, 49, 49, 2),
      child: Stack(children: <Widget>[
        Padding(
            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: SvgPicture.asset("images/vandhane3.svg",
                width: 42, height: 39)),
        Padding(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: const Text("Manuel", style: TextStyle(color: Colors.white)))
      ]),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    double space = 12;

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: const Color.fromARGB(9, 9, 9, 1),
        body: Stack(children: <Widget>[
          textContainer(),
          Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(615, 150, 50, 30),
              child: Container(
                height: 3,
                width: 390,
                color: Color.fromRGBO(49, 49, 49, 2),
              )),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(600, 150, 50, 30),
            child: Column(children: <Widget>[
              SizedBox(
                height: space,
              ),
              createRowKeyBoardRow([
                numberButton("1"),
                numberButton("2"),
                numberButton("3"),
                temperatureButton()
              ]),
              SizedBox(
                height: space,
              ),
              createRowKeyBoardRow([
                numberButton("4"),
                numberButton("5"),
                numberButton("6"),
                quantumButton()
              ]),
              SizedBox(
                height: space,
              ),
              Align(
                alignment: Alignment.topRight,
                child: createRowKeyBoardRow([
                  numberButton("7"),
                  numberButton("8"),
                  numberButton("9"),
                  startButton()
                ]),
              ),
              SizedBox(
                height: space,
              ),
              Row(children: <Widget>[
                SizedBox(width: space),
                deleteButton(),
                SizedBox(width: space),
                numberButton("0"),
                SizedBox(width: space),
                stopButton(), //pauseButton(),
              ]),
              SizedBox(
                height: space * 5,
              ),
              Row(children: <Widget>[
                SizedBox(width: space),
                tapButton(),
              ])
            ]),
          ),
        ]));
  }

  Row createRowKeyBoardRow(List<Widget> keys) {
    double space = 12;
    List<Widget> result = [];
    for (var element in keys) {
      result.add(SizedBox(width: space));
      result.add(element);
    }
    return Row(children: result);
  }
}
