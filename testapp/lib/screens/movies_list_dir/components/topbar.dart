import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testapp/screens/movies_list_dir/components/menu_item.dart';
import 'package:testapp/services/Auth.dart';

import 'menu_items.dart';

class TopAppBar {
  final BuildContext _context;

  const TopAppBar(this._context);
  getAppBar() {
    return AppBar(
      backgroundColor: Color.fromRGBO(7, 31, 50, 0.29),
      title: Text(
        'MOVIES',
        style: TextStyle(
            color: Color.fromRGBO(255, 76, 41, 1),
            fontFamily: 'Roboto',
            fontSize: 18,
            letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 1),
      ),
      centerTitle: true,
      actions: [
        PopupMenuButton<MenuItem>(
          color: Color.fromRGBO(7, 31, 50, 0.29),
          onSelected: (item) => onSelected(_context, item),
          itemBuilder: (context) => [
            ...MenuItems.menuItemsFirst.map(buildItem).toList(),
            PopupMenuDivider(),
            ...MenuItems.menuItemsSecond.map(buildItem).toList(),
          ],
        ),
      ],
    );
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem<MenuItem>(
        value: item,
        child: Row(
          children: [
            Icon(item.icon, color: Colors.white, size: 20),
            const SizedBox(width: 12),
            Text(
              item.text,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      );

  onSelected(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.itemLogOut:
        final provider = Provider.of<Auth>(context, listen: false);
        provider.logout();
        break;
      case MenuItems.itemAddMovies:
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: AddMovieFormWidget(),
              );
            });
        break;
      default:
    }
  }
}

class AddMovieFormWidget extends StatefulWidget {
  @override
  _AddMovieFormWidgetState createState() => _AddMovieFormWidgetState();
}

class _AddMovieFormWidgetState extends State<AddMovieFormWidget> {
  final _formkey = GlobalKey<FormState>();
  Image poster = Image.asset("assets/logo/g_logo.png");
  String name = "";
  String director = "";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Add Movie",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
