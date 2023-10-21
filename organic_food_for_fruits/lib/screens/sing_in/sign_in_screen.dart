import 'package:flutter/material.dart';
import 'package:organic_food_for_fruits/screens/sing_in/components/background_image.dart';
import 'package:organic_food_for_fruits/screens/sing_in/components/signin_buttons.dart';
import 'package:organic_food_for_fruits/screens/sing_in/components/signin_text_fields.dart';

import '../../constants/constants.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              BackgroundImage(),
              Center(
                  child: Text("Organic",
                      style: TextStyle(
                        color: green,
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ))),
              SigninTextField(),
              SignInButtons()
            ],
          ),
        ),
      ),
    );
  }
}
