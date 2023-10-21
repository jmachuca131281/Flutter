
import 'package:flutter/material.dart';

class Car extends StatelessWidget {
  const Car({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 30, vertical: 40),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.cyanAccent),
            width: 330,
            height: 160,
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("Lorem Impsum",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: const [
                        Text("Lorem Impmñlkjlk fuente",
                            style: TextStyle(fontSize: 18))
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "0,5%",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text("Lorem"),
                            FloatingActionButton.extended(
                              icon: const Icon(
                                Icons.arrow_forward,
                                size: 24,
                              ),
                              onPressed: () => {},
                              backgroundColor: Colors.black,
                              label: Text("Lorem"),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}