import 'package:flutter/material.dart';
import 'package:flutter_application_1/kullan%C4%B1c%C4%B1_girisi.dart';






void main() async{
  WidgetsFlutterBinding.ensureInitialized();

    

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      
      
      ),
      home:kullanicigirisi(),
    );
  }
}