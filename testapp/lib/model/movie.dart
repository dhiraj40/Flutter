import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

part 'movie.g.dart';

@HiveType(typeId: 0)
class Movie extends HiveObject {
  @HiveField(0)
  late Image poster;

  @HiveField(1)
  late String name;

  @HiveField(2)
  late String director;

  //Movie(this.poster, this.name, this.director);
}
