import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({Key? key}) : super(key: key);

  @override
  _XylophonePageState createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  static AudioCache player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              buildContainer(
                  color: const Color(0xffef443a),
                  notaNomeri: '1',
                  splashColor: Colors.orange),
              buildContainer(
                  color: const Color(0xfff99700),
                  notaNomeri: '2',
                  splashColor: Colors.amber),
              buildContainer(
                  color: const Color(0xffffe93b),
                  notaNomeri: '3',
                  splashColor: Colors.amberAccent),
              buildContainer(
                  color: const Color(0xff4cb050),
                  notaNomeri: '4',
                  splashColor: Colors.blue),
              buildContainer(
                  color: const Color(0xff2e968c),
                  notaNomeri: '5',
                  splashColor: Colors.cyan),
              buildContainer(
                  color: const Color(0xff2996f5),
                  notaNomeri: '6',
                  splashColor: Colors.deepPurple),
              buildContainer(
                  color: const Color(0xff9b28b1),
                  notaNomeri: '7',
                  splashColor: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildContainer(
      {required Color color,
      required String notaNomeri,
      required Color splashColor}) {
    return Expanded(
      child: Container(
        color: color,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: splashColor,
            onTap: () {
              player.play('notes/nota$notaNomeri.wav');
            },
          ),
        ),
      ),
    );
  }
}
