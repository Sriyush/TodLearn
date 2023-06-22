import 'dart:async';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter/material.dart';
import 'package:todlearn/screens/home_screen.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
            Duration(seconds: 3),
                () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen())));
    return Scaffold(
        body: Stack(
      children:[ 
        
        Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.7,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.7,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 148, 196, 243),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(100),bottomLeft: Radius.circular(100),)
              ),
              child: Center(child: Image.asset(
                'assets/Todlearnt.png',
                // height: 1600,
                // width: 1000,
                scale: 0.8,
              )),
            )
          ],
            
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.6,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(children: [
                Text('Welcome to Todlearn!!',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  wordSpacing: 2,
                ),),
                SizedBox(height: 15,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text('Learn with Fun :)', style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(1),
                ),
                ),),
                SizedBox(height: 30,),

                Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                child: LoadingAnimationWidget.staggeredDotsWave(color: Colors.blue.shade100, size: 50),
                )
              ]
              ),
            ),
          ),
        ]),
      ),],
      ),
      // ),
    );
  }
}
