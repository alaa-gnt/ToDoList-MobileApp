import 'package:flutter/material.dart';
import 'package:flutter_app/util/dialog_box.dart';
import 'package:flutter_app/util/todo_tile.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
     List toDoList = [
      [ "Make turotial " , true ] , 
      [ "Make turotial " , true ] , 

       ] ;

    void checkboxmethode( bool? value , int index) { 
      setState(() {
        toDoList[index][1] = !toDoList[index][1] ; 
      });
    }

    void createNewTask() { 
      showDialog(context: context, builder: (context) { 
       return DialogBox()
      } )  ; 
    }
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
              backgroundColor: Colors.yellow[200],
              appBar: AppBar(

                title: Text('To Do List'), 
                elevation: 0 ,
              ),
              floatingActionButton: FloatingActionButton( 
                onPressed: createNewTask , 
                child: Icon(Icons.add ),
                backgroundColor: Colors.yellow ,
                 ),

              body: 
              ListView.builder(
                itemCount: toDoList.length,
                itemBuilder: (context, index) {
                 return  TodoTile(
                    taskName: toDoList[index][0],
                   onChange: (value) => checkboxmethode(value , index),
                    taskComplited: toDoList[index][1] 
                    );
                },)
      
      ),
    );
  }
}