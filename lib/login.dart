import 'package:flutter/material.dart';
final _formkey = GlobalKey<FormState>();
final _formkey1 = GlobalKey<FormState>();



class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
 bool obs=true ;
 


  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor:  Colors.pink[600],
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
     
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.pink[100])
            
            
            ),
            onPressed:  () {
                Navigator.pushNamed(context, "register");
          
                }, child: Text("Sign in")),
        )]
      
      
      
      ),
      
      body: Center(
       
        child: 
        
        SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          
          children: [

            Image.asset("images/cam.png",width: 300,
            height: 300,),
         
          SizedBox(
            width: 50,
            height: 50,
          ),
          
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: Form(
              key: _formkey,
              child: TextFormField(
                
                
                decoration: InputDecoration(
                
                  border: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.circular(30),
                        
                  ),
                  hintText: "Enter user name"
                ),
                validator: (name) => name!.length < 3 ? 'Name should be least 3 character' :null,

              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formkey1,
              child: TextFormField(
                
                decoration: InputDecoration(
                  suffixIcon:GestureDetector(onTap: (){
                  setState(() {
                      obs = !obs;
                  });
                    
              
              
                  },
                  child: Icon(obs ? Icons.visibility: Icons.visibility_off),
                  
                  ),
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        
                  ),
                  hintText: "Enter your password"
                ),
                validator:(password) => password!.length < 8 ? 'Name should be least 3 character' :null,
               
               obscureText: obs,
                
                keyboardType: TextInputType.text,
              
                
                
                         ),
            ),
          ),
          SizedBox(
            width: 40,
            height: 40,
          ),
          ElevatedButton(
            
            style: ButtonStyle( foregroundColor: MaterialStatePropertyAll(Colors.white),
            backgroundColor: MaterialStatePropertyAll(Colors.pink[400])
            ),
          
            onPressed: () {
              Navigator.pushNamed(context, "home");
            
          }, child: Text("login")),
          
          SizedBox(
            width: 150,
            height: 150,
          ),
       
          
          ],
          
          
          
                ),
        ),//column
      
      ),//center
   
   
   
   
   
    );//scafold
  
  
  
  }
}