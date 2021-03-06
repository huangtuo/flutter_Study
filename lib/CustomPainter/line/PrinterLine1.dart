import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

/// ------------------------------
/// ┌─┐┬ ┬ ┬┌─┐┬ ┬
/// ├┤ │ └┬┘│ ││ │
/// └  ┴─┘┴ └─┘└─┘
/// Author       : fzl flyou
/// Date         : 2018/10/12 0012
/// ProjectName  : test1
/// Description  :
/// Version      : V1.0
/// ------------------------------

void main() {
  runApp(new MaterialApp(
    home: PrinterLineDemo(),
  ));
}

class PrinterLineDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PrinterLineDemoState();
  }
}

class PrinterLineDemoState extends State<PrinterLineDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PrinterLineDemo"),
      ),
      body: Container(
        child: CustomPaint(
          painter: LinePainter(new Paint()
            ..color = Colors.lightGreenAccent
            ..strokeCap = StrokeCap.round
            ..isAntiAlias = true
            ..strokeWidth = 15.0),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  var _paint;

  LinePainter(this._paint);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(20.0, 20.0), Offset(100.0, 100.0), _paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
