import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "his is text inside a widget.",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 20),
          ),
          Image.network("https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png"),
          Icon(Icons.add_shopping_cart_sharp, size: 20, color: Colors.purple,),
          CircleAvatar(
            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB4B0zk_PsWp-_jBHRKp5SWFIQAauHcbbjOQ&s"),
            radius: 200,
          )
        ],
      ),
    );
  }
}