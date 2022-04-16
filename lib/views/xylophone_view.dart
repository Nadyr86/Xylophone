import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:xylophone/app_constants/colors/app_colors.dart';
import 'package:xylophone/widgets/custom_container.dart';

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
            children: const [
              CustomContainer(
                color: AppColors.red,
                notaNumber: '1',
                splashColor: AppColors.orange,
              ),
              CustomContainer(
                color: AppColors.orangAccent,
                notaNumber: '2',
                splashColor: AppColors.amber,
              ),
              CustomContainer(
                color: AppColors.yellow,
                notaNumber: '3',
                splashColor: AppColors.amberAccent,
              ),
              CustomContainer(
                color: AppColors.greenLight,
                notaNumber: '4',
                splashColor: AppColors.blue,
              ),
              CustomContainer(
                color: AppColors.greenDark,
                notaNumber: '5',
                splashColor: AppColors.cyan,
              ),
              CustomContainer(
                color: AppColors.blue,
                notaNumber: '6',
                splashColor: AppColors.black,
              ),
              CustomContainer(
                color: AppColors.pinkDark,
                notaNumber: '7',
                splashColor: AppColors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
