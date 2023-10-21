import 'package:flutter/material.dart';

class CounterScreem extends StatefulWidget {
  const CounterScreem({Key? key}) : super(key: key);

  @override
  State<CounterScreem> createState() => _CounterScreemState();
}

class _CounterScreemState extends State<CounterScreem> {
  // todo: Add variables and properties.
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
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Solo Champion',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Número de click'),
            Text('$counter'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustonFloatinAction(
        increaseFun: increase,
        decreaseFun: decrease,
        resetFun: reset,
      ),

      // bottomNavigationBar:
      //   BottomNavigationBar(items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.add),
      //       label: 'Increase',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.restore),
      //       label: 'Reset',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.minimize),
      //       label: 'Decrease',
      //     ),
      // ]),
    );
  }
}

class CustonFloatinAction extends StatelessWidget {
  final Function increaseFun;
  final Function decreaseFun;
  final Function resetFun;

  const CustonFloatinAction({
    Key? key,
    required this.increaseFun,
    required this.decreaseFun,
    required this.resetFun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFun(),
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          child: const Icon(Icons.restore),
          onPressed: () => resetFun(),
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_2_sharp),
          onPressed: () => decreaseFun(),
        ),
      ],
    );
  }
}
