import 'package:flutter/material.dart';
import 'package:tik_tac_toe/screens/create_room_screen.dart';
import 'package:tik_tac_toe/screens/join_room_screen.dart';
import 'package:tik_tac_toe/screens/main_menu_screen.dart';
import 'package:tik_tac_toe/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TicTacToe App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
      ),
      routes: {
        MainMenuScreen.routeName: (context) => const MainMenuScreen(),
        JoinRoomSreen.routeName: (context) => const JoinRoomSreen(),
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
      },
      home: const MainMenuScreen(),
    );
  }
}
