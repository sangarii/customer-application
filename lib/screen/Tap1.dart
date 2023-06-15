import 'package:flutter/material.dart';
import 'package:sample_application/screen/Tap5.dart';





class Tap1 extends StatefulWidget {
  const Tap1({super.key});

  @override
  State<Tap1> createState() => _Tap1State();
}

class _Tap1State extends State<Tap1> {
 
   
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sample app'),
         actions: [
          IconButton(onPressed: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const Tap5()));
          }, 
          icon: Icon(Icons.search))
        ],
        
      

         ),
body: Center(
  child:   Container(
  
          child: Text('screen 1'),
  
        ),
),
       
          );
    
  }}
  
             
              
             
             
           
            
            
         
       
       
      
      
      
     
          