// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smoke_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SmokeInfoAdapter extends TypeAdapter<SmokeInfo> {
  @override
  final int typeId = 0;

  @override
  SmokeInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SmokeInfo(
      smokeQty: fields[0] as int,
      smokeDate: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, SmokeInfo obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.smokeQty)
      ..writeByte(1)
      ..write(obj.smokeDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SmokeInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
