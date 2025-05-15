import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController mobileNumberController = TextEditingController();
  String loginErrorMsg = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        heightFactor: 40,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100,bottom: 40),
              
              child: CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0V-w0eR6Ptn9T96pDADf8h7xTDPAPBKa_TA&s",scale: 20,),
                radius: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text("Welcome To Whatsapp"),
            ),
            TextField(
              controller: mobileNumberController,
              decoration: InputDecoration(
                labelText: "Please enter your password",
                border: OutlineInputBorder(),
              ),
              ),
              Text(loginErrorMsg),
              OutlinedButton(onPressed: () {
                if(mobileNumberController.text == "12345"){
                  setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
                  });
                }
                else{
                  setState(() {
                    loginErrorMsg = "Incorrect Password!";
                  });
                }
              }, child: Text("Login now"),),
          ],
        ),
      ),

    );
  }
}