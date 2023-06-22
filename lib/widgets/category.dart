import 'package:flutter/material.dart';
import 'package:todlearn/screens/counting_game_screen.dart';
import 'package:todlearn/screens/english_module_screen.dart';
import 'package:todlearn/screens/math_module_screen.dart';


import '../models/product.dart';
class categorylist extends StatelessWidget {
  const categorylist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
     shrinkWrap: true,
     physics: ScrollPhysics(),
     itemCount: products.length,
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.75), itemBuilder: (context,index)=> categorycard(
       product: products[index],
       
     ),

     );
  }
}
class categorycard extends StatelessWidget {
  const categorycard({
    super.key, required this.product,
  });
final Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (product.title == 'Fun with Numbers') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MathModuleScreen(),
            ),
          );
        } else if (product.title == 'English') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EnglishModuleScreen(),
            ),
          );
        }
        else if (product.title == 'Count it out') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CountingGameScreen(),
            ),
          );
      }
      },
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
         padding: const EdgeInsets.all(10),
         height: 70,
         decoration: BoxDecoration(color: product.color,
         borderRadius: BorderRadius.circular(15)),
         child: Column(children: [
          Image.asset(
            product.image,
           
          ),
          const SizedBox(height: 10,),
          Text(product.title,style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),),
          const SizedBox(height: 10,),
          Text(
            "${product.games} games",
            style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),),
         ],)
       ),
    ),
    );
  }
}