import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
   final String taskName ; 
   final bool taskComplited ; 
   final void Function(bool?)? onChange;

  const TodoTile({super.key 
             , required this.taskName 
             , required this.onChange
              , required this.taskComplited
              });
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0 , left: 30 , right: 30 ,),
      child: Container(
        decoration: BoxDecoration( 
           color: Colors.yellow[500] , 
           borderRadius: BorderRadius.circular(10) 
        ),
        padding: EdgeInsets.all(25),
        
        child: Row(
          children: [
            Checkbox(value: taskComplited , onChanged: onChange, ) ,  
            Text(
              taskName  , 
              style: TextStyle(
                 decoration: taskComplited? TextDecoration.lineThrough : TextDecoration.none ,
                color: Colors.black , 
                 fontSize: 20 
                 
                  ) , 
               ),
          ],
        )),
    ) ; 
  }
}