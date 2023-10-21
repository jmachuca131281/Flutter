// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final List<String> items = ['Sarah', 'Isabella', 'Machuca', 'Abreo'];
//   // final List<String> items;

//   MyApp({super.key, });

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('ListViewss'),
//         ),
//         body: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text('${items[index]}'),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'ListView with Search'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   TextEditingController editingController = TextEditingController();

//   final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
//   // var items = List<String>();
//   List<String> items = [];

//   @override
//   void initState() {
//     items = duplicateItems;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         child: Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 onChanged: (value) {},
//                 controller: editingController,
//                 decoration: const InputDecoration(
//                     labelText: "Search",
//                     hintText: "Search",
//                     prefixIcon: Icon(Icons.search),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(25.0)))),
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: items.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text('${items[index]}'),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'ListView with Search'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   TextEditingController editingController = TextEditingController();

//   final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
//   var items = <String>[];

//   @override
//   void initState() {
//     items = duplicateItems;
//     super.initState();
//   }

//   void filterSearchResults(String query) {
//     setState(() {
//       items = duplicateItems
//           .where((item) => item.toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         child: Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 onChanged: (value) {
//                   filterSearchResults(value);
//                 },
//                 controller: editingController,
//                 decoration: const InputDecoration(
//                     labelText: "Search",
//                     hintText: "Search",
//                     prefixIcon: Icon(Icons.search),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(25.0)))),
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: items.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text('${items[index]}'),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController editingController = TextEditingController();
    final List<String> items = ['a', 'b', 'b', 'c'];
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(children: [
                  TextField(
                    onChanged: (value) {},
                    controller: editingController,
                    decoration: const InputDecoration(
                        labelText: "Write something",
                        hintText: "Searching",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25)))),
                  ),
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: null,
                        itemBuilder: (context, index) {
                          return ListTile(title: Text('Item: $items'));
                        }),
                  ),
                  Expanded(
                    child: Text('${items.length}'),)
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
