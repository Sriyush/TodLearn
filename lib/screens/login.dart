import 'package:flutter/material.dart';
import 'package:todlearn/screens/home_screen.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: const AssetImage('assets/mickss.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
            ),
            Container(
              padding: EdgeInsets.only(left: 100, top: 130),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          // TextField(
                          //   style: TextStyle(color: Colors.black),
                          //   decoration: InputDecoration(
                          //       fillColor: Colors.grey.shade100,
                          //       filled: true,
                          //       hintText: "Email",
                          //       border: OutlineInputBorder(
                          //         borderRadius: BorderRadius.circular(10),
                          //       )),
                          // ),
                          SizedBox(
                            height: 30,
                          ),
                          // TextField(
                          //   style: TextStyle(),
                          //   obscureText: true,
                          //   decoration: InputDecoration(
                          //       fillColor: Colors.grey.shade100,
                          //       filled: true,
                          //       hintText: "Password",
                          //       border: OutlineInputBorder(
                          //         borderRadius: BorderRadius.circular(10),
                          //       )),
                          // ),
                          SizedBox(
                            height: 70,
                          ),
                          // Spacer(flex: 3),
                          Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // Text(
                              //   'Sign in',
                              //   style: TextStyle(
                              //       fontSize: 27, fontWeight: FontWeight.w700),
                              // ),
                              Padding(
                                padding: const EdgeInsets.all(100.0),
                              
                              child: Center(
                              child: MaterialButton(
                               height: 60,
                               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                               color: Colors.black45,
                               onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreen()),
                              );
                              },
                  // style: MaterialButton.styleFrom(primary: Colors.limeAccent,),
                child: Text('Get Started', 
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white
                )
                ),
              ),),)
                            ],
                          ),),
                          SizedBox(
                            height: 30,
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     TextButton(
                          //       onPressed: () {
                          //         Navigator.pushNamed(context, 'register');
                          //       },
                          //       child: Text(
                          //         'Sign Up',
                          //         textAlign: TextAlign.left,
                          //         style: TextStyle(
                          //             decoration: TextDecoration.underline,
                          //             color: Color(0xff4c505b),
                          //             fontSize: 18),
                          //       ),
                          //       style: ButtonStyle(),
                          //     ),
                          //     TextButton(
                          //         onPressed: () {},
                          //         child: Text(
                          //           'Forgot Password',
                          //           style: TextStyle(
                          //             decoration: TextDecoration.underline,
                          //             color: Color(0xff4c505b),
                          //             fontSize: 18,
                          //           ),
                          //         )),
                          //   ],
                          // )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}