import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/ToDO_page.dart';

void main() { 
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        
        home: TodoPage() ,
        theme: ThemeData(primarySwatch: Colors.yellow ),
        
    );
        }
    }