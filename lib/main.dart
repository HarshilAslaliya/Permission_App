import 'package:flutter/material.dart';
import 'package:permission/views/screens/homepage.dart';

void main(){
  runApp(MyApp(),);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true,brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>HomePage(),
      },
    );
  }
}
