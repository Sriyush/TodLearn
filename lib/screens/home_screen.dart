import 'dart:ffi';
// import 'package:google_fonts/google_fonts.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:todlearn/models/product.dart';
import 'package:shimmer/shimmer.dart';
import '../widgets/Sorting.dart';
import '../widgets/category.dart';
import 'feedback_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex =0;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        
         iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.pets,
              color: Colors.blue)),
       actions: <Widget>[
         PopupMenuButton<int>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
            PopupMenuItem<int>(value: 0,
            child: Text('Feedback'),)
          ])

       ],
      ),
      bottomNavigationBar: BottomNavyBar(
   selectedIndex: _selectedIndex,
   showElevation: true, // use this to remove appBar's elevation
   onItemSelected: (index) => setState(() {
              _selectedIndex = index;
              
    }),
   items: [
     BottomNavyBarItem(
       icon: Icon(Icons.apps),
       title: Text('Home'),
       activeColor: Colors.red,
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.favorite),
         title: Text('Users'),
         activeColor: Colors.purpleAccent
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.people),
         title: Text('Messages'),
         activeColor: Colors.pink
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.person),
         title: Text('Settings'),
         activeColor: Colors.blue
     ),
   ],
),
      body:SafeArea(
        // child: SingleChildScrollView(
        child: ListView(
        children: [
          // Custombar(),
          SizedBox(height: 20,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Welcome!',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
                  ),
                  SizedBox(height: 10,),
                  Text('Lets try to learn intresting things\nin intresting way.',
                  
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black38,
                    wordSpacing: 2.5,
                    height: 1.5,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),)
                ],
              ),
              Spacer(),
              Column(
               children: [
                // Container(
                //   height: 90,
                //   width: 90,
                //   decoration: BoxDecoration(color: Colors.blue,border: Border.all(width:5), borderRadius: BorderRadius.circular(30) ),
                  CircleAvatar(
                          backgroundImage: AssetImage('assets/Todlearn.png'),
                          radius: 50,
                  ),
                // )
               ],
              )
            ],
          ),
          SizedBox( height: 20,),

          // Sorting(),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            const Text('Lets learn',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            InkWell(
              onTap: (){},
              child: Text('See all', style: TextStyle(fontSize: 16, color:Colors.pinkAccent)),
            ),
           
          ],),
          SizedBox(height: 20,),
           categorylist(),
          ],
          ),
          )
        ],
      ),
      // ),
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





