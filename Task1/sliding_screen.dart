// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Slideing extends StatelessWidget {
  // const Slideing({Key? key}) : super(key: key);
  final int index;
  Slideing(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '7krave',
                      style: TextStyle(
                          color: Colors.teal[300], fontSize: 40, fontFamily: 'Lobster', fontWeight: FontWeight.w400),
                    ),
                    Container(
                      width: 330,
                      height: 330,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(slidelist[index].imgurl),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      slidelist[index].title,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w900),
                          textAlign: TextAlign.center
                    ),
                    SizedBox(height: 10,),
                    Text(
                      slidelist[index].descrip,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                    ),
                  ],
                );
  }
}

class Slide{
  final String imgurl;
  final String title;
  final String descrip;

  Slide({
    required this.imgurl,
    required this.title,
    required this.descrip,
  });

}

final slidelist = [
  Slide(imgurl: 'assets/images/sammy-delivery.png', 
  title: 'Get food delivery to your doorstep' ,
   descrip: 'We have young and professional delivery team that will bring your food as soon as possible to your doorstep'
   ),
   Slide(imgurl: 'assets/images/sammy-woman-getting-online-delivery.png', 
  title: 'Buy any food from your favorite restaurant' ,
   descrip: 'We are constantly adding your favourite restaurant thoughout the territory and around your area carefully selected'
   ),
];