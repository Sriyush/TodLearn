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
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Dive into World of Alphabets',style: TextStyle(color: Colors.blue)),
      ),
      body: Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: ListView(children: [
        Container(
          padding: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          color: Color(0xFFF5F3FF),
          image: DecorationImage(image: AssetImage('assets/Alphabet.jpg', ),
          fit: BoxFit.cover,
          )),
        ),
        SizedBox(height: 15,),
        Text('Fun with Alphabets', style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(height: 10,),
        Text('2 Games', style: TextStyle( fontSize: 14,
        fontWeight: FontWeight.w400)),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          decoration: BoxDecoration(
            color: Color(0xFFF5F3FF),
            borderRadius: BorderRadius.circular(10),

          ),
          child :Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: Color(0xff71b8ff),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                         Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlphabetScreen(),
                                ),
                              );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 50),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Guess the First Letter',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Icon(
                              Icons.abc,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Material(
                    color: Color(0xff71b8ff),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WordsScreen(),
                                ),
                              );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 50),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Correct The Word',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ]
)


        )
      ],),)
    );
  }
}