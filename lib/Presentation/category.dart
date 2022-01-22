import 'package:calculator/Presentation/navbar.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 8, right: 8),
        child: Column(
          children: [
            custom_navbar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  elevation: 0,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/cake.png",
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Age',
                        
                        style: TextStyle(fontSize: 18, color: Colors.green,fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
