import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageFeedScreen(),
    );
  }
}

class ImageFeedScreen extends StatefulWidget {
  @override
  _ImageFeedScreenState createState() => _ImageFeedScreenState();
}

class _ImageFeedScreenState extends State<ImageFeedScreen> {
  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isPortrait ? 1 : 2, 
        ),
        itemCount: 10, 
        itemBuilder: (ctx, index) {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Image.network(
                'https://via.placeholder.com/150',
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
