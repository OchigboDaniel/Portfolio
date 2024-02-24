import 'package:flutter/material.dart';
import 'package:portfoliio/Theme/theme_constant.dart';
import 'package:portfoliio/Theme/theme_manager.dart';
import 'package:provider/provider.dart';
import 'home/home.dart';

void main() {
  runApp( ChangeNotifierProvider(create: (context)=>ThemeManager(),
  child: const MyApp(),));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      theme: Provider.of<ThemeManager>(context).themeData,
      debugShowCheckedModeBanner: false,
      home:  Home(),
    );
  }
}
