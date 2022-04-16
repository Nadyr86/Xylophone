import 'package:xylophone/data/services/audio_services.dart';

class AudioRepozitory {
  Future<void> playNote(String number) async {
    await audioServices.playNote(number);
  }
}

AudioRepozitory audioRepozitory = AudioRepozitory();
