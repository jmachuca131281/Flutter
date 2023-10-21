import 'package:flutter/material.dart';

import 'model/sound.dart';

class MyListTile extends StatelessWidget {
  final Sound sound; // Recivimos el obj. sound
  const MyListTile({Key? key, required this.sound}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(sound.title),
      subtitle: Text(sound.author!),

      trailing: Icon(Icons.more_vert),
      leading: Icon(Icons.chrome_reader_mode),
      onTap: (){print("object ontap");},
      onLongPress: (){print("object ontap");},
    );
  }
}
