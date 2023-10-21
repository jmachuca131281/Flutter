import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final estilo = const TextStyle(fontSize: 20);
  final String _title = 'AppBar';

  @override
  Widget build(BuildContext context) {
    // BuildConstex identificador de widget en el arbol.
    // print('Verificando: ${context.findAncestorWidgetOfExactType()}');
    //! Each widget has its own BuildContext,
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: ListViewExtract(title: _title, estilo: estilo),
    );
  }
}

class ListViewExtract extends StatelessWidget {
  const ListViewExtract({
    Key? key,
    required String title,
    required this.estilo,
  })  : _title = title,
        super(key: key);

  final String _title;
  final TextStyle estilo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold Es una clase
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text(_title),
      ),
      body: SafeArea(
        bottom: false,
        left: true,
        child: ListView(
          children: List.generate(
              100,
              (index) => Text(
                    '$index - Hola mundo',
                    style: estilo,
                  )),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => 'hola',
        child: const Icon(Icons.plumbing),
        tooltip: 'Pulsame pa ver!',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
