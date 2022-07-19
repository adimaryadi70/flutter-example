import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
   const MyButton({super.key});

   @override
   Widget  build(BuildContext context) {
     return GestureDetector(
       onTap: () {
         print('Test di click');
       },
       child: Container(
         height: 50.0,
         padding: const EdgeInsets.all(8.0),
         margin: const EdgeInsets.symmetric(horizontal: 8.0),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(5.0),
           color: Colors.lightGreen[500]
         ),
         child: const Center(
           child: Text('Test'),
         ),
       ),
     );
   }
}

// counter display
class CounterDisplay extends StatelessWidget {
  const CounterDisplay({ required this.count,super.key });

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Count: $count');
  }
}

class CounterIncrement extends StatelessWidget {
  const CounterIncrement({ required this.onPressed, super.key });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: const Text('Hitung'));
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CounterIncrement(onPressed: _increment),
        const SizedBox(width: 16),
        CounterDisplay(count: _counter),
      ],
    );
  }
}



void main() {
    // runApp(
    //   const MaterialApp(
    //     home: Scaffold(
    //       body: Center(
    //         child: MyButton(),
    //       ),
    //     ),
    //   )
    // );

    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    );
}
