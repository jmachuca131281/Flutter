import 'package:financial_services/pages/home/widgets/bottom.dart';
import 'package:flutter/material.dart';

import 'body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Body(),
      bottomNavigationBar: Bottom(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.home, size: 40,),
        onPressed: () => {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}




