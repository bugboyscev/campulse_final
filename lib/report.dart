import 'package:flutter/material.dart';
class report extends StatefulWidget {
  const report({super.key});

  @override
  State<report> createState() => _reportState();
}

class _reportState extends State<report> {
   String dropdownvalue = 'Item 1';    
  
  // List of items in our dropdown menu 
  var items = [     
    'Item 1', 
    'Item 2', 
    'Item 3', 
    'Item 4', 
    'Item 5', 
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:  Colors.pink[600],
      title: Text("Report",style: TextStyle(color: Colors.white)),
      centerTitle: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      
      
      ),
      body: Center(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: DropdownButton( 
                  
                               // Initial Value 
                               value: dropdownvalue, 
                  
                               // Down Arrow Icon 
                               icon: const Icon(Icons.keyboard_arrow_down),     
                  
                               // Array list of items 
                               items: items.map((String items) { 
                  return DropdownMenuItem( 
                    value: items, 
                    child: Text(items), 
                  ); 
                               }).toList(), 
                               // After selecting the desired option,it will 
                               // change button value to selected value 
                               onChanged: (String? newValue) {  
                  setState(() { 
                    dropdownvalue = newValue!; 
                  }); 
                               }, 
                             ),
               ),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        
      ),
      hintText: "Enter problem"
    ),
    
   keyboardType: TextInputType.multiline,
   maxLines: null,
  ),
),

      ],),),
    );
  }
}