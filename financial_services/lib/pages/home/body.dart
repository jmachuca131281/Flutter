
import 'package:financial_services/pages/home/widgets/Car_table.dart';
import 'package:financial_services/pages/home/widgets/car.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/propic.jpeg'),
                  ),
                  const Text("Lorem Apsom"),
                  IconButton(
                      onPressed: () => {},
                      icon: const Icon(Icons.dehaze_outlined))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0.5),
              child: Text(
                "lorem ipsum dolor por chinchurria deja de pensar cosas y concentrate vale",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            const Car(),
            const CarTable()
          ],
        ),
      ),
    );
  }
}
