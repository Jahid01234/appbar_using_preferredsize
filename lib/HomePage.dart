import 'dart:ui';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize( // Without AppBar, we use PreferredSize
        preferredSize:Size.fromHeight(100) ,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // The 1st menu bar Icon
                 Container(
                   height: 40,
                   width: 40,
                   decoration:BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                     color: Colors.grey[300],
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.shade500,
                         spreadRadius: 2,
                         blurRadius: 15,
                         offset: Offset(4,4)
                       ),
                       BoxShadow(
                           color: Colors.white,
                           spreadRadius: 2,
                           blurRadius: 15,
                           offset: Offset(-4,-4)
                       )
                     ]
                   ) ,
                   child: InkWell(
                     onTap: (){
                       ScaffoldMessenger.of(context).showSnackBar(
                           SnackBar(content: Text("I am Menu Icon."))
                       );
                     },
                       child: Icon(Icons.menu,color: Colors.cyan,)
                   ),
                ),


                // The 2nd Search Icon
                 Container(
                  height: 40,
                  width: 40,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey[300],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade500,
                            spreadRadius: 2,
                            blurRadius: 15,
                            offset: Offset(4,4)
                        ),
                        BoxShadow(
                            color: Colors.white,
                            spreadRadius: 2,
                            blurRadius: 15,
                            offset: Offset(-4,-4)
                        )
                      ]
                  ) ,
                  child: InkWell(
                    onTap: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("I am Search Icon."))
                      );
                    },
                      child: Icon(Icons.search,color: Colors.cyan,)
                  ),
                ),

            ],
          )
        ),

      ),
      backgroundColor: Colors.white, // all colors change with AppBar
      body: Center(child: Text("appBar using PrefferredSize",
      style: TextStyle(color: Colors.orange,fontSize: 20),),),
    );
  }
}
