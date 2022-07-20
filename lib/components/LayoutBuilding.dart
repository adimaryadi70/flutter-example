import 'package:flutter/material.dart';

Widget titleScreen = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text('Like Odamang ',style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Text('Senzeround',style: TextStyle(color: Colors.grey[500]))
            ],
          )
      ),
      Icon(Icons.star,color: Colors.red[500])
    ],
  ),
);

Widget textSection =  const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese',
    softWrap: true,
  ),
);

class LayoutBuilding extends StatelessWidget {
  const LayoutBuilding({super.key});

  @override
  Widget build(BuildContext context) {
    Color color           =    Theme.of(context).primaryColor;
    Widget buttonSection  =    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'Telepon'),
        _buildButtonColumn(color, Icons.near_me, 'Route'),
        _buildButtonColumn(color, Icons.share, 'Share')
      ],
    );
    return MaterialApp(
      title: 'Building Layout',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('test'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover
            ),
            titleScreen,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }



  Column _buildButtonColumn(Color color, IconData icon,String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color
            ),
          ),
        )
      ],
    );
  }
}