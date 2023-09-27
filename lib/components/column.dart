// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyColumn extends StatefulWidget {
   MyColumn({this.img,this.txt,this.var_});
String? img;
String? txt;
int? var_;

  @override
  State<MyColumn> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyColumn> {
  @override
  
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 90,
            backgroundImage: AssetImage(widget.img!),
          ),
        ),
        Text(
           widget.txt! ,
          style: GoogleFonts.mooli(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Text(
              "${widget.var_}",
              style: const TextStyle(fontSize: 102),
            )),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey, fixedSize: const Size(140, 40)),
              onPressed: () {
                setState(() {
                  widget.var_=widget.var_!+1;
                });
              },
              child: const Text(
                "Add 1 point",
                style: TextStyle(fontSize: 16),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey, fixedSize: const Size(140, 40)),
              onPressed: () {
                setState(() {
                   widget.var_=widget.var_!+2;
                });
              },
              child: const Text(
                "Add 2 point",
                style: TextStyle(fontSize: 16),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey, fixedSize: const Size(140, 40)),
              onPressed: () {
                setState(() {
                  widget.var_=widget.var_!+3;
                });
              },
              child: const Text(
                "Add 3 point",
                style: TextStyle(fontSize: 16),
              )),
        ),
      ],
    );
  }
}