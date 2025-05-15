import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';


class NehaChatPage extends StatefulWidget {
  const NehaChatPage({super.key});

  @override
  State<NehaChatPage> createState() => _NehaChatPageState();
}

class _NehaChatPageState extends State<NehaChatPage> {
  List messages=[];
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
                      "https://images.pexels.com/photos/28943468/pexels-photo-28943468/free-photo-of-elegant-woman-in-traditional-indian-saree.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
              ),
             Text("Neha"),
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
        bottomNavigationBar: Container(
          height: 70,
          child: MessageBar(
              onSend: (msg){
                setState(() {
                  messages.add(msg);
                });
              },
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
        body: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return BubbleSpecialOne(
                  text: messages[index],
                  isSender: true,
                  color: Color(0xFF1B97F3),
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    //fontStyle: FontStyle.italic,
                    //fontWeight: FontWeight.bold,
                  ),
                );
              },
            )
          ],
        ),
    );
  }
}