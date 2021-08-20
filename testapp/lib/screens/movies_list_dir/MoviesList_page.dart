import 'package:flutter/material.dart';
import 'package:testapp/model/movie.dart';
import 'components/topbar.dart';

class MoviesListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(8, 32, 50, 1),
      appBar: new TopAppBar(context).getAppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(moviesList[index].name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text("Director: " + moviesList[index].director,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                )),
            leading: moviesList[index].poster,
            trailing: Wrap(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                  color: Colors.white,
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ],
            ),
          );
        },
        itemCount: moviesList.length,
      ),
    );
  }
}

List<Movie> moviesList = [];
