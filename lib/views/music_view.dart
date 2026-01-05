import 'package:flutter/material.dart';
import 'package:musique/views/list_containers/albums_containers.dart';
import 'package:musique/views/list_containers/artist_containers.dart';
import 'package:musique/views/list_containers/genres_container.dart';

class MusicView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Divider(),
          //Contrainer pour les artistes
          ArtistContainers(),
          const Divider(),
          //Container pour les Albums
          AlbumsContainers(),
          const Divider(),
          //Container pour les Genres de Musiques
          GenresContainer(),
          const Divider()
        ],
      ),
    );
  }
}
