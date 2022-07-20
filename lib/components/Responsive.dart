import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key}) : super(key: key);

  static const String _title  =  'Test Responsive';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: BoxStyle()
    );
  }
}

class BoxStyle extends StatelessWidget {
  const BoxStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsie Test')),
      body: LayoutBuilder(
          builder: (BuildContext context,BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _buildNormalContainer();
          } else {
            return _buildWideContainers();
          }
        }
      ),
    );
  }

  Widget _buildWideContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }

  Widget _buildNormalContainer() {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.red,
      ),
    );
  }

}