import 'package:hive_flutter/hive_flutter.dart';

part 'smoke_info.g.dart';

@HiveType(typeId: 0)
class SmokeInfo {
  @HiveField(0)
  final int smokeQty;
  @HiveField(1)
  final DateTime smokeDate;
  SmokeInfo({
    required this.smokeQty,
    required this.smokeDate,
  });
}
