import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.grey[500]),
              ),
            ],
          ),
        ),
        MergeSemantics(
          child: Row(children: [
            Icon(Icons.star, color: Colors.red[500]),
            Text('41', semanticsLabel: '41 stars'),
          ]),
        ),
      ]),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'Call'),
          _buildButtonColumn(color, Icons.near_me, 'Route'),
          _buildButtonColumn(color, Icons.share, 'Share'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(children: [
          titleSection,
          buttonSection,
        ]),
      ),
    );
  }

  TextButton _buildButtonColumn(Color color, IconData icon, String label) {
    return TextButton(
      onPressed: () {
        // @TODO
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          SizedBox(height: 8),
          Text(
            label.toUpperCase(),
            semanticsLabel: label,
            style: TextStyle(fontSize: 12, color: color),
          )
        ],
      ),
    );
  }
}
