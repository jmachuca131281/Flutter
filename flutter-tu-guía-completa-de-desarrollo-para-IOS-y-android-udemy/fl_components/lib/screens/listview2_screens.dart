
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview tipo 2'),
          // elevation: 0,
          // backgroundColor: Colors.indigo,
        ),
        /**
       * La diferencia entre separated y builder es que no builder
       * No se agrega el separatorBuilder.
       */
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  title: Text(options[i]),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.amber,),
                  onTap: () {
                    final game = options[i];
                    print(game);
                  }, // Para ver los click en pantalla de donde es precionado.
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
