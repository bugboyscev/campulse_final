import 'package:flutter/material.dart';

class help extends StatefulWidget {
  const help({super.key});

  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:  Colors.pink[600],
      title: Text("Help",style: TextStyle(color: Colors.white)),
      centerTitle: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      
      
      ),
      
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
         
          ElevatedButton(
  onPressed: () {
     Navigator.pushNamed(context, "help");
  },
  child: Text('Ragging',style: TextStyle(color: Colors.white,
  fontSize: 30,
  
  ),),
  
  style: ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(60),
    backgroundColor: Colors.red[600],
  ),
),
            SizedBox(
              height: 10,
    
            ),
            
            ElevatedButton(
  onPressed: () {
     Navigator.pushNamed(context, "help");
  },
  child: Text('Disaster ',style: TextStyle(color: Colors.white,
  fontSize: 30,
  
  ),),
  
  style: ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(60),
    backgroundColor: Colors.red[600],
  ),
),

            SizedBox(
              height: 10,
    
            ),
                         ElevatedButton(
  onPressed: () {
     Navigator.pushNamed(context, "help");
  },
  child: Text('Fire Alarm',style: TextStyle(color: Colors.white,
  fontSize: 30,
  
  ),),
  
  style: ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(60),
    backgroundColor: Colors.red[600],
  ),
),

            SizedBox(
              height: 10,
    
            ),
                                   ElevatedButton(
  onPressed: () {
     Navigator.pushNamed(context, "comments");
  },
  child: Text('Others',style: TextStyle(color: Colors.white,
  fontSize: 30,
  
  ),),
  
  style: ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(60),
    backgroundColor: Colors.red[600],
  ),
),


          
        ],
      ),),
    );
  }
}