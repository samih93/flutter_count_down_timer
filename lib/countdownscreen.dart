import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class CountDownScreen extends StatelessWidget {
  const CountDownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int endTime = DateTime(2022, 07, 05, 15, 07, 0).millisecondsSinceEpoch;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(15),
                color: Colors.green.shade300,
                child: Text(
                  "End Time 2022-07-05 15:07:00",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.red.shade300,
              child: CountdownTimer(
                textStyle: TextStyle(color: Colors.white, fontSize: 25),
                endTime: endTime,
                endWidget: endWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget endWidget() => Container(
        padding: EdgeInsets.all(15),
        color: Colors.red.shade300,
        child: Text(
          "Time Expired",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      );
}
