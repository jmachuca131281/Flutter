import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Card Widget'),
            subtitle: Text('Buenos aca estoy agregando el texto del card de la applicación y te pido mi Dios que me entreges este conocimeinto para un mejor trabajo y de esta manera pagar más rápido las deudas.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              TextButton(
                onPressed: () {},
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('OK')
              ),
            ]),
          )
        ],
      ),
    );
  }
}