import 'package:flutter/material.dart';
import 'Theme.dart';
import 'login_screen.dart';


Future<void> main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme, //import theme class
      home: const Login(),
    );
  }
}
