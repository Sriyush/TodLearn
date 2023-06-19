import 'package:flutter/material.dart';

import 'addition_screen.dart';
import 'subtraction_screen.dart';

class MathModuleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Learn Maths',style: TextStyle(color: Color(0xFFF5F5F5)),),
      ),
      body: Container( 
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
          image: DecorationImage(
            image: AssetImage('assets/register.png'),
            fit: BoxFit.cover,
          ),
        ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             MaterialButton(
                height: 60,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                color: Colors.black38,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdditionScreen()),
                  );
                },
                  // style: MaterialButton.styleFrom(primary: Colors.limeAccent,),
                child: Text('Addition', 
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white
                )
                ),
              ),
            SizedBox(height: 20),
           MaterialButton(
                height: 60,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                color: Colors.black38,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SubtractionScreen()),
                  );
                },
                  // style: MaterialButton.styleFrom(primary: Colors.limeAccent,),
                child: Text('Subtraction', 
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white
                )
                ),
              ),
            SizedBox(height: 20),
            // MaterialButton(
            //     height: 60,
            //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
            //     color: Colors.black38,
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => CountingGameScreen()),
            //       );
            //     },
            //       // style: MaterialButton.styleFrom(primary: Colors.limeAccent,),
            //     child: Text('Count it', 
            //     style: TextStyle(fontWeight: FontWeight.bold,
            //     fontSize: 18,
            //     color: Colors.white
            //     )
            //     ),
            //   ),
          ],
        ),
      ),),
    );
  }
}
