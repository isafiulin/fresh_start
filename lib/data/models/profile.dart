import 'package:flutter/material.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fresh_start/data/models/smoke_info.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'profile.g.dart';

@HiveType(typeId: 1)
class Profile {
  @HiveField(0)
  final String userName;
  @HiveField(1)
  final double pricePack;
  @HiveField(2)
  final int smokeADay;
  @HiveField(3)
  final int numbInPack;
  @HiveField(4)
  final DateTime? lastSmokeDay;
  @HiveField(5)
  final List<SmokeInfo> smokeInfoList;
  @HiveField(6)
  final DateTime registrationDate;
  Profile(
      {required this.userName,
      required this.pricePack,
      required this.smokeADay,
      required this.numbInPack,
      required this.smokeInfoList,
      required this.registrationDate,
      this.lastSmokeDay});

  Profile copyWith(
      {String? userName,
      double? pricePack,
      int? smokeADay,
      int? numbInPack,
      ValueGetter<DateTime?>? lastSmokeDay,
      List<SmokeInfo>? smokeInfoList,
      DateTime? registrationDate}) {
    return Profile(
        userName: userName ?? this.userName,
        pricePack: pricePack ?? this.pricePack,
        smokeADay: smokeADay ?? this.smokeADay,
        numbInPack: numbInPack ?? this.numbInPack,
        lastSmokeDay: lastSmokeDay != null ? lastSmokeDay() : this.lastSmokeDay,
        smokeInfoList: smokeInfoList ?? this.smokeInfoList,
        registrationDate: registrationDate ?? this.registrationDate);
  }
}
