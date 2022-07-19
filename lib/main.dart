import 'package:flutter/material.dart';
// import 'package:app/component/button.dart';
import 'package:app/component/counter_increment.dart';


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

    runApp(
        const MaterialApp(
          home: Scaffold(
            body: Center(
              child: Counter(),
            ),
          ),
        )
    );
}
