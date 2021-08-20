import 'dart:core';
import 'package:flutter/material.dart';
import 'package:testapp/screens/movies_list_dir/components/menu_item.dart';

class MenuItems {
  static const itemAddMovies = MenuItem("Add Movies", Icons.add);
  static const itemLogOut = MenuItem("Log Out", Icons.logout);
  static const List<MenuItem> menuItemsFirst = [
    itemAddMovies,
  ];
  static const List<MenuItem> menuItemsSecond = [
    itemLogOut,
  ];
}
//