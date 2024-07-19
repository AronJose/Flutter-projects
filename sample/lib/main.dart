import 'package:flutter/material.dart';
import 'package:sample/screens/home_screen.dart';

void main(){
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //theme: ThemeData(
        //appBarTheme:const AppBarTheme(backgroundColor:Colors.black)),
      title: "Aron Demo Flutter",
      home: HomeScreen(),
    );
  }
}

