import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screens/alphabet_screen.dart';
import 'alphabet_screen.dart';
import 'words_screen.dart';

class EnglishModuleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Learn English',style: TextStyle(color: Color(0xFFF5F5F5)),),
      ),
      body: Container(
        decoration: const BoxDecoration(
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
              height: 50,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              color: Colors.black38,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlphabetScreen()),
                );
              },
              child: Text('Alphabets',
              style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white)
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(
              height:50,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              color: Colors.black38,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WordsScreen()),
                );
              },
              child: Text('Unjumble the words',
              style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white)
              ),
            ),
          ],
        ),
      ),),
    );
  }
}