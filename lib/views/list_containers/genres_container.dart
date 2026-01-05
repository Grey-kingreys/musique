import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musique/model/enums/genre.dart';
import 'package:musique/model/services/music_handler.dart';
import 'package:musique/views/cells/genres_cell.dart';

class GenresContainer extends StatelessWidget {

  List<Genre> genres = MusicHandler().allGenre();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("Genres musicaux", style: GoogleFonts.signika(fontSize: 20)),
          SizedBox(
            height: 75,
            child: ListView.builder(
              itemCount: genres.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => GenresCell(genre: genres[index]))
            ),
          )
        ],
      ),
    );
  }
}