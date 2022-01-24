import 'package:flutter/material.dart';
import 'MoviDetails.dart';
import 'movie.dart';

class Listviews extends StatelessWidget {
  //const Listviews({Key? key}) : super(key: key);
  // final listmovies=[
  //   'squid game',
  //   'The hundered',
  //   'ELITE'
  //
  // ];
  final List<Movie> Movielist = Movie.getmovies();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple.shade500,
        title: const Text("Movie"),
      ),
      backgroundColor: Colors.purple.shade100,
      body: ListView.builder(
          itemCount: Movielist.length,
          itemBuilder: (BuildContext contex, index) {
            return Stack(children: [
              moviesCard(Movielist[index], context),
              Positioned(
                top: 8,
                child: ImageMovie(
                  Movielist[index].images[0],
                ),
              )
            ]);

            // return Card(
            //
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(15),
            //
            //   ),
            //   elevation: 15,
            //
            //
            //   child: Container(
            //
            //     margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            //     child: ListTile(
            //       onTap: () {
            //         Navigator.push(context,MaterialPageRoute(builder:(Contex)=>moviesdetail(moviename: Movielist.elementAt(index),)));
            //       },
            //
            //       leading: CircleAvatar(
            //         // backgroundImage: NetworkImage(Movielist[index].images[0]),
            //         radius:40,
            //        child: Container(
            //          height: 200,
            //          width: 200,
            //          decoration: BoxDecoration(
            //            image:DecorationImage(image: NetworkImage(Movielist[index].images[0]),
            //              fit: BoxFit.cover
            //
            //            ),
            //                borderRadius: BorderRadius.circular(15)
            //          ),
            //        ),
            //
            //        // child: Text("f"),
            //       ),
            //
            //
            //       title: Text(Movielist[index].title,
            //       style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         fontSize: 16
            //       ),),
            //       subtitle: Text(Movielist[index].actors),
            //     ),
            //   ),
            // );
          }),
    );
  }

  TextStyle Allsubheading() {
    return TextStyle(
      color: Colors.white,
      fontSize: 17,
    );
  }

  Widget moviesCard(Movie movie, BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (Contex) => MovieDisplay(
                      display: movie.images[0],
                      // movieName: movie.title,
                      // runtime: movie.runtime,
                      // awards: movie.awards,
                      // released: movie.released,
                      // actor: movie.actors,
                      // rated: movie.imdbRating,
                      // image: movie.images[0],
                    )))
      },
      child: Container(
        margin: EdgeInsets.only(left: 55),
        height: 115,
        width: MediaQuery.of(context).size.width,
        child: Card(
          color: Colors.black54,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          movie.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                      Text(
                        "Rating ${movie.imdbRating}/10",
                        style: Allsubheading(),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Released ${movie.released}",
                        style: Allsubheading(),
                      ),
                      Text(
                        movie.runtime,
                        style: Allsubheading(),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget ImageMovie(url) {
    return Container(
      //padding: EdgeInsets.all(8),
      height: 100,
      width: 100,
      // margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(url ??
                  'https://images-na.ssl-images-amazon.com/images/M/MV5BMjA3NTEwOTMxMV5BMl5BanBnXkFtZTgwMjMyODgxMzE@.V1_SX1500_CR0,0,1500,999_AL.jpg'),
              fit: BoxFit.cover)),
    );
  }
}
