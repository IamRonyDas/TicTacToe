import 'package:flutter/material.dart';
import 'package:tik_tac_toe/Widgets/custom_button.dart';
import 'package:tik_tac_toe/Widgets/custom_text.dart';
import 'package:tik_tac_toe/Widgets/custom_textfield.dart';
import 'package:tik_tac_toe/responsive/responsive.dart';

class JoinRoomSreen extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomSreen({super.key});

  @override
  State<JoinRoomSreen> createState() => _JoinRoomSreenState();
}

class _JoinRoomSreenState extends State<JoinRoomSreen> {
  final TextEditingController _gameIdController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _gameIdController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(shadows: [
                Shadow(
                  blurRadius: 40,
                  color: Colors.blue,
                )
              ], text: 'Join Room', fontSize: 70),
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomTextField(
                  controller: _nameController, hintText: 'Enter Your Nickname'),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  controller: _gameIdController, hintText: 'Enter Game Id'),
              SizedBox(
                height: size.height * 0.04,
              ),
              CustomButton(onTap: () {}, text: 'Join'),
            ],
          ),
        ),
      ),
    );
  }
}
