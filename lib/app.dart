import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late AudioPlayer oynatici;
  @override
  void initState() {
    oynatici = AudioPlayer();
    super.initState();
  }

  List<String> sarkilar = [
    'bongo.wav',
    'bip.wav',
    'clap1.wav',
    'woo.wav',
    'crash.wav',
    'how.wav',
    'oobah.wav',
    'ridebel.wav'
  ];
  List<Color> renkler = [
    Color.fromARGB(255, 89, 74, 231),
    Color.fromARGB(255, 7, 255, 19),
    Color.fromARGB(255, 240, 91, 178),
    Colors.grey,
    Color.fromARGB(255, 206, 162, 159),
    Colors.brown,
    Color.fromARGB(255, 233, 226, 177),
    Color.fromARGB(255, 102, 175, 209),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 8,
          itemBuilder: (context, index) {
            return MyButton(
              color: renkler[index],
              oynatici: oynatici,
              ses: sarkilar[index],
            );
          },
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.oynatici,
    required this.color,
    required this.ses,
  }) : super(key: key);
  final AudioPlayer oynatici;
  final Color color;
  final String ses;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await oynatici.play(
          AssetSource(ses),
        );
      },
      child: ColoredBox(color: color),
    );
  }
}
