import 'package:flutter/material.dart';

class Todos extends StatelessWidget {
  Function(bool?)? onChanged;

  Todos({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(value: false, onChanged: onChanged),
                    const Text('Texto del todo por agregar'),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      color: Colors.red,
                      onPressed: () {},
                    )],
                ),
              ),
            );
          },
        ));
  }
}
