import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

@Singleton()
class Logger {
  Logger() {
    _init();
  }

  late Talker talker;

  _init() {
    talker = TalkerFlutter.init();
  }
}
