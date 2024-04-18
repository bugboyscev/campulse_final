import 'package:flutter/material.dart';
class comments extends StatefulWidget {
  const comments({super.key});

  @override
  State<comments> createState() => _commentsState();
}

class _commentsState extends State<comments> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor:  Colors.pink[600],
      title: Text("Problems",style: TextStyle(color: Colors.white)),
      centerTitle: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      
      
      ),
body: Center(
  child: Column(
    
    children: [
      SizedBox(height: 40,),
      
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextField(
    
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        
      ),
      label: Text("Enter your problems here"),
      hintText: "Enter problems"
    ),
    
   keyboardType: TextInputType.multiline,
   maxLines: null,
  ),
),
   ElevatedButton(
            
            style: ButtonStyle( foregroundColor: MaterialStatePropertyAll(Colors.white),
            backgroundColor: MaterialStatePropertyAll(Colors.pink[400])
            ),
          
            onPressed: () {
             
            
          }, child: Text("Submit")),
      
    ],
  ),
),


    );
  }
}