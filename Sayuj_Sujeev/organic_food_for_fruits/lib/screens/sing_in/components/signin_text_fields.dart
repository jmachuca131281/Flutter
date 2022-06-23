import 'package:flutter/material.dart';
import 'package:organic_food_for_fruits/constants/constants.dart';

class SigninTextField extends StatelessWidget {
  const SigninTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: appPadding, vertical: appPadding * 1.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sign In',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.04),
          TextField(
            decoration: InputDecoration(hintText: 'Email'),
          ),
          SizedBox(height: size.height * 0.04),
          TextField(
            obscureText: true,
            decoration: InputDecoration(hintText: 'Password'),
          ),
          SizedBox(height: size.height * 0.04),
        ],
      ),
    );
  }
}
