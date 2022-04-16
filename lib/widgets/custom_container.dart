import 'package:flutter/material.dart';
import 'package:xylophone/data/repozitory/audio_repozitory.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final String notaNumber;
  final Color splashColor;
  const CustomContainer(
      {required this.color,
      required this.notaNumber,
      this.splashColor = Colors.cyan,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: splashColor,
            onTap: () async {
              await audioRepozitory.playNote(notaNumber);
            },
          ),
        ),
      ),
    );
  }
}
