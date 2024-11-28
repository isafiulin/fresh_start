// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileAdapter extends TypeAdapter<Profile> {
  @override
  final int typeId = 1;

  @override
  Profile read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Profile(
      userName: fields[0] as String,
      pricePack: fields[1] as double,
      smokeADay: fields[2] as int,
      numbInPack: fields[3] as int,
      smokeInfoList: (fields[5] as List).cast<SmokeInfo>(),
      lastSmokeDay: fields[4] as DateTime?,
      registrationDate: fields[6] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Profile obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.userName)
      ..writeByte(1)
      ..write(obj.pricePack)
      ..writeByte(2)
      ..write(obj.smokeADay)
      ..writeByte(3)
      ..write(obj.numbInPack)
      ..writeByte(4)
      ..write(obj.lastSmokeDay)
      ..writeByte(5)
      ..write(obj.smokeInfoList)
      ..writeByte(6)
      ..write(obj.registrationDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
