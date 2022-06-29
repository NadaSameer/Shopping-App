// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_task1/my_button.dart';
import 'package:flutter_task1/sliding_dots.dart';
import 'package:flutter_task1/sliding_screen.dart';

class HomeWidget extends StatelessWidget {
  // HomeWidget({Key? key}) : super(key: key);
  final PageController _pageController = PageController(initialPage: 0,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: _pageController ,
                itemBuilder: (context, index) => Slideing(index),
                itemCount: slidelist.length,),
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              Slidedots(true)
                          
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
                
          ),
          SizedBox(height: 10,),
          Column(
            children: [
              Button(
                text: 'Get Strated',
                onclick: (){
                  Navigator.pushNamed(context, '/login');
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                            color: Color.fromRGBO(77, 181, 172, 1),
                            fontSize: 18),
                      )),
                ],
              )
            ],
          ),
        ],
      ),
    ));
  }
}
