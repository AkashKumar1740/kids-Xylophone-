import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueGrey),
      home: const buttonscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class buttonscreen extends StatefulWidget {
  const buttonscreen({super.key});

  @override
  State<buttonscreen> createState() => _buttonscreenState();
}

class _buttonscreenState extends State<buttonscreen> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(0, 80, 0, 0)),
          Container(
              height: 122,
              color: Colors.blue,
              child: TextButton(
                  onPressed: () {
                    player.play(AssetSource('play1.mp3'));
                    final snackbar = SnackBar(content: Text("Screen1"));
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  child: const Text(
                    '1',
                    style: TextStyle(fontSize: 50),
                  ))),
          Container(
            height: 122,
            color: Colors.cyan,
            child: TextButton(
                onPressed: () {
                  player.play(AssetSource('play2.mp3'));
                  final snackbar = SnackBar(content: Text("Screen2"));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: const Text(
                  '2',
                  style: TextStyle(fontSize: 50),
                )),
          ),
          Container(
            height: 122,
            color: Colors.amber[100],
            child: TextButton(
                onPressed: () {
                  player.play(AssetSource('play3.mp3'));
                  final snackbar = SnackBar(content: Text("Screen3"));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: const Text(
                  '3',
                  style: TextStyle(fontSize: 50),
                )),
          ),
          Container(
            height: 122,
            color: Colors.amber[600],
            child: TextButton(
                onPressed: () {
                  player.play(AssetSource('play4.mp3'));
                  final snackbar = SnackBar(content: Text("Screen4"));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: const Text(
                  '4',
                  style: TextStyle(fontSize: 50),
                )),
          ),
          Container(
            height: 122,
            color: Colors.deepOrangeAccent,
            child: TextButton(
                onPressed: () {
                  player.play(AssetSource('play5.mp3'));
                  final snackbar = SnackBar(content: Text("Screen5"));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: const Text(
                  '5',
                  style: TextStyle(fontSize: 50),
                )),
          ),
          Container(
            height: 122,
            color: Colors.greenAccent,
            child: TextButton(
                onPressed: () {
                  player.play(AssetSource('play6.mp3'));
                  final snackbar = SnackBar(content: Text("Screen6"));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: const Text(
                  '6',
                  style: TextStyle(fontSize: 50),
                )),
          ),
          Container(
            height: 122,
            color: Colors.pinkAccent,
            child: TextButton(
                onPressed: () {
                  player.play(AssetSource('play7.mp3'));
                  final snackbar = SnackBar(content: Text("Screen7"));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: const Text(
                  '7',
                  style: TextStyle(fontSize: 50),
                )),
          ),
        ],
      ),
    );
  }
}
