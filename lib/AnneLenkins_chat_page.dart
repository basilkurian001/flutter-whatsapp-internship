import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';

class AnnelenkinsChatPage extends StatefulWidget {
  const AnnelenkinsChatPage({super.key});

  @override
  State<AnnelenkinsChatPage> createState() => _AnnelenkinsChatPageState();
}

class _AnnelenkinsChatPageState extends State<AnnelenkinsChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm1IrMpbVvfTEVE1h4vE8C7H2mG9SEMqQ_Sw&s"),
                ),
              ),
             Text("Anna Lenkins"),
            ],
          ),
          actions: [
            IconButton(
            icon: const Icon(Icons.video_call),
            onPressed: () {
             // Handle call press
            },
            ),

            IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {
             // Handle call press
            },
            ),

            IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
             // Handle call press
            },
            ),
          ]
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://media.istockphoto.com/id/1403848173/vector/vector-online-chatting-pattern-online-chatting-seamless-background.jpg?s=612x612&w=0&k=20&c=W3O15mtJiNlJuIgU6S9ZlnzM_yCE27eqwTCfXGYwCSo="),
              fit: BoxFit.cover,
            ),),
            child: Column(
              children: [
                BubbleSpecialThree(
                  text: 'Please try and give some feedback !',
                  color: Color(0xFF1B97F3),
                  tail: true,
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
                ),
                BubbleSpecialOne(
                  text: 'Sure',
                  isSender: false,
                  color: Color(0xFF1B97F3),
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    //fontStyle: FontStyle.italic,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                BubbleSpecialOne(
                  text: 'I tried, it was awesome',
                  isSender: false,
                  color: Color(0xFF1B97F3),
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    //fontStyle: FontStyle.italic,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                BubbleSpecialOne(
                  text: 'oh ,Thanks for the feedback !',
                  isSender: true,
                  color: Color(0xFF1B97F3),
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    //fontStyle: FontStyle.italic,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                BubbleSpecialOne(
                  text: 'ok good night',
                  isSender: true,
                  color: Color(0xFF1B97F3),
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    //fontStyle: FontStyle.italic,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        bottomNavigationBar: Container(
          height: 70,
          child: MessageBar(
              onSend: (_) => print(_),
              actions: [
                InkWell(
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 24,
          ),
          onTap: () {},
                ),
                Padding(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: InkWell(
            child: Icon(
              Icons.camera_alt,
              color: Colors.green,
              size: 24,
            ),
            onTap: () {},
          ),
                ),
              ],
            ),
        ),
        );
  }
}
