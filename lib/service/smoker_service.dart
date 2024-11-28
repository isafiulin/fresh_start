import 'package:fresh_start/data/models/profile.dart';
import 'package:fresh_start/data/models/smoke_info.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SmokerService {
  static void addNewSmokerInfo({int val = 1}) {
    final box = Hive.box<Profile>('Profile');
    final profile = box.get('Profile');

    if (profile == null) {
      return;
    }

    final newList = profile.smokeInfoList;
    newList.add(SmokeInfo(smokeQty: val, smokeDate: DateTime.now()));
    box.put('Profile', profile.copyWith(smokeInfoList: newList));
  }
}
