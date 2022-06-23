
import 'package:flutter/material.dart';
import 'package:yoga_training/screens/login/components/background_image_clipper.dart';
import 'package:yoga_training/screens/login/components/circle_button.dart';
import 'package:yoga_training/screens/login/components/login_credentials.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                BackgroundImage(),
                LoginCredentials()
              ],
            ),
            CircleButton()
          ],
        ),
      ),
    );
  }
}
