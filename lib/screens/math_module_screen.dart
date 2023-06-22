import 'package:flutter/material.dart';

import 'addition_screen.dart';
import 'subtraction_screen.dart';

class MathModuleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Fun With Numbers',style: TextStyle(color: Colors.blue)),
      ),
      body: Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: ListView(children: [
        Container(
          padding: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          color: Colors.blue.shade100,
          image: DecorationImage(image: AssetImage('assets/monsadd.png', ))),
        )
      ],),)
    );
  }
}
