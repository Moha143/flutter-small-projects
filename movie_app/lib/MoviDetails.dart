// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

import 'movie.dart';

class MovieDisplay extends StatelessWidget {
  final String display;

  const MovieDisplay({Key? key, required this.display}) : super(key: key);
  // const MovieDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(display),
                fit: BoxFit.cover,
              )),
            ),
            Icon(
              Icons.play_circle_outline,
              size: 100,
              color: Colors.white,
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0x00f5f5f5), Color(0xfff5f5f5)],
                  begin: Alignment.center,
                  end: Alignment.bottomCenter)),
          height: 80,
        )
      ],
    );
  }
}

///Today 11/12/2021
///
class HeaderWithPoster extends StatelessWidget {
  final Movie movie;

  const HeaderWithPoster({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          MoviePoster(poster: movie.images[0].toString()),
          SizedBox(width: 16),
          Expanded(
              child: MovieHeader(
            movie: movie,
          ))
        ],
      ),
    );
  }
}

///////Poster class
class MoviePoster extends StatelessWidget {
  final String poster;

  const MoviePoster({Key? key, required this.poster}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // var borderRadius=BorderRadius.all(Radius.circular(10));
    var borderRadius = BorderRadius.all(Radius.circular(10));
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Container(
          width: MediaQuery.of(context).size.width / 4,
          height: 160,
          decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(poster), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}

//////////////Header Class
class MovieHeader extends StatelessWidget {
  final Movie movie;
  const MovieHeader({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${movie.year} . ${movie.genre}".toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.cyan),
        ),
        Text(
          "${movie.title}",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
        ),
        Text.rich(TextSpan(
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          children: [
            TextSpan(
              text: movie.plot,
            ),
            TextSpan(
                text: 'more......',
                style: TextStyle(color: Colors.indigoAccent))
          ],
        ))
      ],
    );
  }
}

class MovieDetailsCast extends StatelessWidget {
  final Movie movie;
  const MovieDetailsCast({Key? key, required this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          MovieField(field: "cast", value: movie.actors),
          MovieField(field: "Directors", value: movie.director)
        ],
      ),
    );
  }
}

class MovieField extends StatelessWidget {
  final String field;
  final String value;

  const MovieField({Key? key, required this.field, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$field: ",
          style: TextStyle(
            color: Colors.cyan,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
                fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}

//
class lineBetween extends StatelessWidget {
  const lineBetween({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.4,
      color: Colors.grey,
    );
  }
}
