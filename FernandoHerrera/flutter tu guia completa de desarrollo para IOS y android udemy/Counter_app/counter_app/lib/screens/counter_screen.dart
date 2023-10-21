// import 'dart:io';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle30 = const TextStyle(fontSize: 30);

    // Scaffold prepare my work place
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10.0, // Show darkness
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks', style: textStyle30),
            Text('$counter', style: textStyle30),
            // Text('Número de clicks', style: TextStyle(fontSize: 30), ),
            // Text( '20', style: TextStyle(fontSize: 30),),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustonFloatinAction(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustonFloatinAction extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustonFloatinAction({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          // onPressed: () => setState(()=>counter++),
          onPressed: () => increaseFn(),
          // onPressed: () {
          //   // print('Hola');
          //   counter++;
          //   setState(() {});
          // },
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          child: const Icon(Icons.restore),
          onPressed: () => resetFn(),
          // onPressed: () {
          //   // print('Hola');
          //   counter = 0;
          //   setState(() {});
          // },
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_2_sharp),
          onPressed: () => decreaseFn(),
          // onPressed: () {
          //   // print('Hola');
          //   counter--;
          //   setState(() {});
          // },
        ),
      ],
    );
  }
}
