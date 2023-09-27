import 'package:basketball_points_counter_app/components/column.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BasketballPointsCounter());
}

class BasketballPointsCounter extends StatefulWidget {
  const BasketballPointsCounter({super.key});

  @override
  State<BasketballPointsCounter> createState() =>
      _BasketballPointsCounterState();
}

class _BasketballPointsCounterState extends State<BasketballPointsCounter> {
  int counterA = 0;
  int counterZ = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Live results"),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 320, top: 15),
              child: Text(
                "+85",
                style: GoogleFonts.inconsolata(
                    color: Colors.green,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                MyColumn(
                  txt: "AlAhly",
                  img: "images/ahly.png",
                  var_: counterA,
                ),
                const SizedBox(
                  height: 520,
                  child: VerticalDivider(
                    indent: 3,
                    thickness: 2,
                  ),
                ),
                MyColumn(
                  img: "images/zamalek.png",
                  txt: "zamalek",
                  var_: counterZ,
                )
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    fixedSize: const Size(140, 40)),
                onPressed: () {
                  setState(() {
                    counterA = 0;
                    counterZ = 0;
                  });
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(fontSize: 24),
                )),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
