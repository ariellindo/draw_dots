import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dots',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Dots Tutorial"),
      ),
      body: Column(
        children: <Widget>[
          dotArray(screenWidth),
          dotArray(screenWidth),
        ],
      ),
    );
  }

  dotArray(screenWidth) {
    return Container(
      // width: 100,
      // height: 400,
      child: CustomPaint(
        painter: OpenPainter(screenWidth: screenWidth),
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  final double screenWidth;

  OpenPainter({this.screenWidth});

  @override
  void paint(Canvas canvas, Size size) {
    double vPosition = 300.00;
    var circlePaint = Paint()
      ..color = Colors.deepOrange[900]
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(screenWidth, vPosition), 10, circlePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
