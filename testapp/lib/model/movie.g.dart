// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieAdapter extends TypeAdapter<Movie> {
  @override
  final int typeId = 0;

  @override
  Movie read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Movie()
      ..poster = fields[0] as Image
      ..name = fields[1] as String
      ..director = fields[2] as String;
  }

  @override
  void write(BinaryWriter writer, Movie obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.poster)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.director);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
