import 'package:flutter/material.dart';
import 'package:modulo_tres_navegacion/screens/myHomePage.dart';
import 'package:modulo_tres_navegacion/screens/nowPlayingPage.dart';

class PlayListPage extends StatefulWidget {
  const PlayListPage({Key? key}) : super(key: key);

  @override
  State<PlayListPage> createState() => _PlayListPageState();
}

class _PlayListPageState extends State<PlayListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ElevatedButton(
        child: Text("Play List Page"),
        onPressed: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NowPlayingPage()))
        },
      )),
    );
  }
}
