import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //Main Header
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
           
         ),
             //SKILS
          Container(
            height: 500,
            width: double.maxFinite,
            color: const Color.fromARGB(255, 214, 230, 238),
           
         ),
             //PROJECTS
          Container(
            height: 500,
            width: double.maxFinite,
            color: const Color.fromARGB(255, 131, 126, 204),
           
         ),    //CONTACT
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
           
         ),
        ],
      ),
    );
  }
}

