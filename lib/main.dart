import 'package:audioplayers/audioplayers.dart';
import 'package:drumapp/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DrumApp());
}

class DrumApp extends StatelessWidget {
  DrumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: App(),
    );
  }
}
