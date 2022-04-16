import 'package:audioplayers/audioplayers.dart';

class AudioServices {
  static AudioCache player = AudioCache();

  Future<void> playNote(String number) async {
    await player.play('notes/nota$number.wav');
  }
}

final AudioServices audioServices = AudioServices();
