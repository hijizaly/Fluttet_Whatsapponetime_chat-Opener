import 'package:flutter/material.dart';
import 'package:whatsapponetime_chat/ui/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp oneTime',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black,
          // primaryColorBrightness: Brightness.light,
          primaryColorDark: Colors.black,
          canvasColor: Colors.white,
          // fontFamily: ,

          brightness: Brightness.light,
          primarySwatch: Colors.green,
          appBarTheme: AppBarTheme(brightness: Brightness.light)),
      darkTheme: ThemeData(
          primaryColor: Colors.white,
          // primaryColorBrightness: Brightness.dark,
          primaryColorLight: Colors.black,
          primaryColorDark: Colors.black,
          indicatorColor: Colors.white,
          canvasColor: Colors.black,

          // textColor:Colors.white,

          brightness: Brightness.dark,
          primarySwatch: Colors.green,
          appBarTheme: AppBarTheme(brightness: Brightness.dark)),
      home: HomeScreen(),
    );
  }
}
