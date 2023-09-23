import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => __HomeState();
}

class __HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:  Container( 
      width: double.infinity,
        child: Column(
          children:[
            Image.asset(
              "assets/logo smea.png",
              width: 150,
              height: 200,
            ),
            Text(
              "SMK NEGERI 1 SLAWI", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold),
            ), SizedBox(height: 5),
            Text(
              "Zulva Hidayatun J", style: TextStyle(fontSize: 14)),
          ],
      ),
    ),
     );

  }
}