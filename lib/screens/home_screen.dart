import 'package:flutter/material.dart';
import 'babysitauth.dart';
import 'feedback_screen.dart';
import 'math_module_screen.dart';
import 'english_module_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text('Kids Learning App', style: TextStyle(color: Color(0xFFF5F5F5)),),
        actions: [
          // Padding(padding: EdgeInsets.only(right: 10.0),
          PopupMenuButton<int>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
            PopupMenuItem<int>(value: 0,
            child: Text('Feedback'),)
          ])
        ],
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //       image: AssetImage('assets/mickey.png'),
      //       // fit: BoxFit.cover,
      //     ),
      //         ),
      //         child: Text(''),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: const Text('Register For Baby Sitting'),
      //         // onTap: () {
      //         //   Navigator.push(context,
      //         //   MaterialPageRoute(builder: (context)=> BabysitterRegistrationPage()));
      //         // },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: const Text('Feedback'),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => FeedbackScreen()),
      //           );
      //           // Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          // borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
          image: DecorationImage(
            image: AssetImage('assets/register.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
//               Expanded(flex: 3,
//               child: Container(
//               // color: Colors.wh
//               width: double.infinity,
//               decoration: BoxDecoration(color: Colors.purpleAccent,
//               borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),),
//               child: Column(children: [
//                 Expanded(child: Image.asset('assets/.png'))

//               ]),
// )
//               ),
//               Expanded(flex: 2,
//                 child: Container(
//                 // color: Colors.white,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
//                 ),
//                 ))
              // Spacer(),
              MaterialButton(
                height: 60,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                color: Colors.black38,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MathModuleScreen()),
                  );
                },
                  // style: MaterialButton.styleFrom(primary: Colors.limeAccent,),
                child: Text('Learn Maths', 
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white
                )
                ),
              ),
              SizedBox(height: 50),
              MaterialButton(
                height: 60,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                color: Colors.black38,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EnglishModuleScreen()),
                  );
                },
                // style: ElevatedButton.styleFrom(primary: Colors.limeAccent,),
                child: Text('Learn English',
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white
                )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  onSelected(BuildContext context, int item) {
    switch(item){
      case 0:
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FeedbackScreen()),);
    }
  }
}

//Some new
