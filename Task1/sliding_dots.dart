import 'package:flutter/material.dart';

class Slidedots extends StatelessWidget {
  // Slidedots({Key? key}) : super(key: key);
  bool active;
  Slidedots(this.active);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: active ? 10 : 8,
      width: active ? 10 : 8,
      decoration: BoxDecoration(
        color: active ? Color.fromRGBO(77, 181, 172, 1) : Colors.grey[400],
        borderRadius: BorderRadius.all(Radius.elliptical(6, 6))
      ),
    );
    
  }
}