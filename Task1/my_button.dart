import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Button extends StatelessWidget {
  final String text;
  final Color textcolor;
  final double height;
  final double width;
  final double borderadius;
  final VoidCallback onclick;

  const Button({
    Key ? key,
    required this.text,
    this.textcolor = Colors.white,
    this.height = 50.0,
    this.width = double.infinity,
    this.borderadius = 7.0,
    required this.onclick,

  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderadius),
      ),
      child: MaterialButton(
        height: height,
        color: Colors.teal[300],
        onPressed: () {
          onclick();
        },
        child: Text(
          text,
          style: TextStyle(color: textcolor, fontSize: 18),
        ),
      ),
    );
  }
}