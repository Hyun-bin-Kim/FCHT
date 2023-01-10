import 'package:flutter/material.dart';
import 'package:hometraining/config/palette.dart';

class Question1 extends StatefulWidget {
  const Question1({Key? key}) : super(key: key);

  @override
  _Question1State createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  bool isQuestion1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.only(top: 90, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Welcome',
                        style: TextStyle(
                          letterSpacing: 1.0,
                          fontSize: 25,
                          color: Colors.white
                        ),
                        children: [
                          TextSpan(
                            text: 'to HomeTraining',
                            style: TextStyle(
                              letterSpacing: 1.0,
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Answer to continue',
                      style: TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.white,
                      ),
                    ),
                  ],
              ),
            ),
          ),
          Positioned(
              child: Container(
                height: 280.0,
                width: MediaQuery.of(context).size.width-40,
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5
                    )
                  ]
                ),
                child: Column(
                  children: [

                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
