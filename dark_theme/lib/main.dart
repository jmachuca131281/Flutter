import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(primarySwatch: Colors.amber),
          darkTheme: ThemeData.dark(),
          themeMode: currentMode,

          // theme: ThemeData(
          //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          //   useMaterial3: true,
          // ),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = [500, 600, 700];

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // title: Text(widget.title),
        actions: [
          IconButton(
              icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode),
              onPressed: () {
                MyApp.themeNotifier.value =
                    MyApp.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              })
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                // Text(
                //   '$_counter',
                //   style: Theme.of(context).textTheme.headlineMedium,
                // ),
              ],
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Go to Other Screen'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OtherScreen()));
              },
            ),
          ),
          // ListaDeVistas(entries: entries, colorCodes: colorCodes),
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// class ListaDeVistas extends StatelessWidget {
//   const ListaDeVistas({
//     super.key,
//     required this.entries,
//     required this.colorCodes,
//   });

//   final List<String> entries;
//   final List<int> colorCodes;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ListView.builder(
//             padding: const EdgeInsets.all(8),
//             itemCount: entries.length,
//             itemBuilder: (BuildContext context, int index) {
//               return Container(
//                 height: 50,
//                 color: Colors.amber[colorCodes[index]],
//                 child: Center(child: Text('Entri ${entries[index]}')),
//               );
//             }),
//       ],
//     );
//   }
// }

// Other Screen
class OtherScreen extends StatelessWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Screen'),
      ),
      body: const Center(
        child: Text(
          'Hello',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
