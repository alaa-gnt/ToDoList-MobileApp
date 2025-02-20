import 'package:flutter/material.dart';
import 'package:flutter_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller ; 
  const DialogBox({super.key , this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
        content: Container(
          padding: EdgeInsets.all(8),
          height: 120 ,
          
           child: Column(
            
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder() , 
                hintText: "write ur task"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                    children: [
                      MyButton(text: "save", onPressed: (){}),
                      MyButton(text: "Cancel", onPressed: (){})
                    ],
              )
            ],
            
           ),

        ),
       
     ) ; 
  }
}