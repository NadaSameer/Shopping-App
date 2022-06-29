// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_task1/my_button.dart';

class LoginPage extends StatelessWidget {

  TextEditingController phoneController = new TextEditingController();
  String phonenumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: 600,
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/posterimage.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome To Fashion Daily', 
                    style: TextStyle(color: Colors.black38, fontSize: 17),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    'Sign in', 
                    style: TextStyle(color: Colors.black, 
                    fontSize: 35,
                    fontFamily: 'Playfair', 
                    fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Phone number ', 
                    style: TextStyle(color: Colors.black38, 
                    fontSize: 15,),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(7.0)),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15.0)
                  ),
                ),
                SizedBox(height: 10,),
                Button(
                    text: 'Sign in',
                    onclick: (){
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
