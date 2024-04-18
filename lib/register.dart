 import 'package:flutter/material.dart';
class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:  Colors.pink[600],
      title: Text("Registertion",style: TextStyle(color: Colors.white),),
      
      centerTitle: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      
      
      ),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
children: [


Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        
      ),
      hintText: "Enter user name"
    ),
  ),
),

Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        
      ),
      hintText: "Enter your email"
    ),
    obscureText: true,
    keyboardType: TextInputType.emailAddress,
  ),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        
      ),
      hintText: "Enter your password"
    ),
    obscureText: true,
    keyboardType: TextInputType.text,
  ),
),








ElevatedButton(
     style: ButtonStyle( foregroundColor: MaterialStatePropertyAll(Colors.white),
            backgroundColor: MaterialStatePropertyAll(Colors.pink[400])
            ),
  
  onPressed: () {
  
}, child: Text("Register")),


],


      ),),
    );
  }
}