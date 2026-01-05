import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musique/model/raw_model/album.dart';
import 'package:musique/model/services/music_handler.dart';
import 'package:musique/views/cells/album_view_cell.dart';

class AlbumsContainers extends StatelessWidget {
  final List<Album> albums = MusicHandler().allAlbums();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Albums", style: GoogleFonts.signika(fontSize: 20),),
        SizedBox(
          height: 300,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: albums.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: ((context, index) => AlbumViewCell(album: albums[index])),
          ),
        ),
      ],
    );
  }
}
