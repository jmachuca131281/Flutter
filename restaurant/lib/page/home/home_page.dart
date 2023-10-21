import 'package:flutter/material.dart';
import 'package:restaurant/page/home/widgets/body.dart';
import 'package:restaurant/page/home/widgets/button_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 20),
                  child: SizedBox(
                    width: 30,
                    child: IconButton(
                      onPressed: () => {},
                      icon: const Icon(Icons.arrow_back),
                      alignment: Alignment.center,
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 250,
                  alignment: Alignment.center,
                  child: const Text(
                    "Sydney CBD",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: const [
              Body(),
            ],
          )
      ),
      bottomNavigationBar: ButtonNavigation(),
    );
  }
}


