import 'package:flutter/material.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(backgroundColor:  Colors.pink[600],
      title: Text("Home page",style: TextStyle(color: Colors.white)),
      centerTitle: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      
      
      ),

      drawer: Drawer(
        backgroundColor: Colors.white,
      child: ListView(
children: [
UserAccountsDrawerHeader(
  decoration: BoxDecoration(color: Colors.pink[600]),
  accountName: Text("user"), accountEmail: Text("user@gmail.com"),
currentAccountPicture: CircleAvatar(
backgroundImage: AssetImage("images/cam.png"),
  backgroundColor:Colors.white,
),
),

ListTile(
leading: Icon(Icons.medical_services),
title: Text("Medical Service"),
onTap: () {
  
},

),

ListTile(
leading: Icon(Icons.bookmark_outline_rounded),
title: Text("Book Doctor"),
onTap: () {
  
},

),

ListTile(
leading: Icon(Icons.diversity_1),
title: Text("Book Psychiatrist"),
onTap: () {
  
},

),

ListTile(
leading: Icon(Icons.add_alert_sharp),
title: Text("Notification"),
onTap: () {
  
},

),

ListTile(
leading: Icon(Icons.airport_shuttle),
title: Text("Call ambulence"),
onTap: () {
  
},

),
ListTile(
leading: Icon(Icons.arrow_back),
title: Text("Log out"),
onTap: () {
   
},

)




],


      ),


      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
ElevatedButton(
  onPressed: () {
     Navigator.pushNamed(context, "help");
  },
  child: Text('Help',style: TextStyle(color: Colors.white,
  fontSize: 30,
  
  ),),
  
  style: ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(100),
    backgroundColor: Colors.red[600],
  ),
),
SizedBox(
  width: 50,
  height: 50,
),

Padding(
  padding: const EdgeInsets.all(10.0),
  child: TextButton(
    
    
              style: ButtonStyle( foregroundColor: MaterialStatePropertyAll(Colors.white),
              backgroundColor: MaterialStatePropertyAll(Colors.red[600])
              ),
    
    onPressed: () {
      Navigator.pushNamed(context, "report");
    
  }, child: Text("Report problem")),
),

          ],

        ),
      ),
    );
  }
}