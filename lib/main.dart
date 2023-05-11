import 'package:flutter/material.dart';
import 'package:whatsappuiclone/pages/ChatPage.dart';
import 'package:whatsappuiclone/pages/HomePage.dart';
import 'package:get/get.dart';
import 'package:whatsappuiclone/pages/SettingsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Color(0xff075E55),
          // color:  Colors.red
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      routes: {
        "/": (context) => HomePage(),
        "SettingsPage": (context) => SettingsPage(),
        "chatpage": (context) => Chatpage(),
      },
    );
  }
}
