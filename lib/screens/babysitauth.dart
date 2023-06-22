import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'home_screen.dart';

class BabysitterRegistrationPage extends StatefulWidget {
  @override
  _BabysitterRegistrationPageState createState() =>
      _BabysitterRegistrationPageState();
}

class _BabysitterRegistrationPageState
    extends State<BabysitterRegistrationPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // int _selectedIndex = 0;
  int _highlightedIndex = 0; // New variable to track the highlighted index
  late String _email;
  late String _password;

  void _register() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      try {
        UserCredential userCredential = await _auth
            .createUserWithEmailAndPassword(email: _email, password: _password);
        if (userCredential.user != null) {
          // Registration successful, do further processing
          print('Registration successful');
        }
      } catch (e) {
        // Registration failed, handle the error
        print('Registration failed: $e');
      }
    }
  }

  void _onItemTapped(int index) {
    // Navigate to the selected page
    if (index == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BabysitterRegistrationPage()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }

    // Set the highlighted index to the selected index
    setState(() {
      _highlightedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Babysitter Registration'),
      ),
      bottomNavigationBar: Builder(
        builder: (context) {
          return BottomNavyBar(
            selectedIndex: _highlightedIndex, // Use the highlighted index
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
          );
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) {},
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _password = value!;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _register,
                  child: Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
