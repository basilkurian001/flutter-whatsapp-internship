import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/AnneLenkins_chat_page.dart';
import 'package:flutter_application_1/neha_chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("WhatsApp",style: TextStyle(color: Colors.white),),
        actions: [
          Icon(Icons.search,color: Colors.white,),
        ],
      ),
      body: 
      Column(
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm1IrMpbVvfTEVE1h4vE8C7H2mG9SEMqQ_Sw&s"),),
            title: Text("Anna Jenkins",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Good night..",style: TextStyle(fontSize: 10),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AnnelenkinsChatPage()),);
            },
            trailing: Column(
              children: [
                Text("12:30 am"),
                CircleAvatar(backgroundColor: Colors.green,radius: 15,child: Text('3',style: TextStyle(color: Colors.white),),),
              ],
            ),
          ),
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage("https://images.pexels.com/photos/28943468/pexels-photo-28943468/free-photo-of-elegant-woman-in-traditional-indian-saree.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),),
          title: Text("Neha",style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("Good morning..",style: TextStyle(fontSize: 10),),
          onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => NehaChatPage()),);
          },
          trailing: Column(
            children: [
              Text("11:30 am"),
              CircleAvatar(backgroundColor: Colors.green,radius: 15,child: Text('1',style: TextStyle(color: Colors.white),),),
            ],
          ),
        ),
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage("https://images.pexels.com/photos/27103969/pexels-photo-27103969/free-photo-of-portrait-of-a-beautiful-indian-bride.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),),
          title: Text("Ashwathy",style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("Good afternoon..",style: TextStyle(fontSize: 10),),
          trailing: Column(
            children: [
              Text("10:00 am"),
              CircleAvatar(backgroundColor: Colors.green,radius: 15,child: Text('4',style: TextStyle(color: Colors.white),),),
            ],
          ),
        ),
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRqqXvLxMv_FICBYh6rEfap6bJJl6sKNDKlA&s"),),
          title: Text("BCA 2023-2026 Batch(Official)",style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Row(
            children: [
              Text("Manju miss HOD: ",style: TextStyle(fontSize: 10),),
              Icon(Icons.mic,size: 13,),
              Text("0:30"),
            ],
          ),
          trailing: Column(
            children: [
              Text("9:00 am"),
              CircleAvatar(backgroundColor: Colors.green,radius: 15,child: Text('4',style: TextStyle(color: Colors.white),),),
            ],
          ),
        ),
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1682092603230-1ce7cf8ca451?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW5kaWFuJTIwbWFufGVufDB8fDB8fHww"),),
          title: Text("Ramesh",style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("Ok",style: TextStyle(fontSize: 10),),
          trailing: Column(
            children: [
              Text("11/05/25"),
            ],
          ),
        ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){}
      ),
      
    );
  }
}