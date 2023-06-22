import 'dart:ffi';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:todlearn/models/product.dart';
import 'package:shimmer/shimmer.dart';
import 'package:todlearn/screens/babysitauth.dart';
import '../widgets/Sorting.dart';
import '../widgets/category.dart';
import 'feedback_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    // Navigate to the selected page
    switch (index) {
      case 0:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => HomeScreen()),
        // );// Home page
        break;
      // case 1:
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => FeedbackScreen()),
      //   );
      //   break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BabysitterRegistrationPage()),
        );
        break;
      // case 3:
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => SettingsScreen()),
      //   );
      //   break;
    }

    // Set the selectedIndex only if the index corresponds to a different page
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.pets,
            color: Colors.blue,
          ),
        ),
        actions: <Widget>[
          PopupMenuButton<int>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: const Text('Feedback'),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: _onItemTapped,
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: const Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.favorite),
            title: const Text('Users'),
            activeColor: Colors.purpleAccent,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: const Text('Messages'),
            activeColor: Colors.pink,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: const Text('Settings'),
            activeColor: Colors.blue,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Welcome!',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Lets try to learn interesting things\nin an interesting way.',
                            style: TextStyle(
                              color: Colors.black38,
                              wordSpacing: 2.5,
                              height: 1.5,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/Todlearn.png'),
                            radius: 50,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Lets learn',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'See all',
                          style: TextStyle(fontSize: 16, color: Colors.pinkAccent),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  categorylist(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => FeedbackScreen()),
        );
        break;
    }
  }
}
