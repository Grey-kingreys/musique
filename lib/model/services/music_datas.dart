import 'package:musique/model/enums/genre.dart';
import 'package:musique/model/enums/media_type.dart';
import 'package:musique/model/raw_model/artist.dart';
import 'package:musique/model/raw_model/song.dart';

class MusicDatas {

  //Artists
  Artist tupac = Artist(name: "2pac", urlImage: "https://arc-anglerfish-eu-central-1-prod-leparisien.s3.amazonaws.com/public/ZRUB7IELF4RAUO4ZRV5TNJVRVQ.jpg");
  Artist smashing = Artist(name: "Smashing Pumpkins", urlImage: "https://www.rollingstone.fr/wp-content/uploads/2018/08/SmashingPumpkins.jpg");
  Artist amadeus = Artist(name: "Mozart", urlImage: "https://www.musicologie.org/Biographies/m/mozart.jpg");


  //Music
  Song get mozart => Song(id: 1, title: "Symphonie numéro 40", album: "Best Of", path: "assets/songs/allegro.mp3", mediaType: MediaType.inApp, thumb: "https://www.musicologie.org/Biographies/m/mozart.jpg", genre: Genre.classic, artist: amadeus);

  List<Song> tuPac() {
    Genre genre = Genre.rap;
    MediaType type = MediaType.internet;
    String album = "Duets";
    String thumb = "https://i.ytimg.com/vi/YY5a5We5kdc/sddefault.jpg";
    Artist artist = tupac;
    return [
      Song(id: 2, title: "New York State Of Mind - 2pac Feat Nas Jay-Z", album: album, path: "https://archive.org/download/2pac_-_Tupac_Duets/02%29%20New%20York%20State%20Of%20Mind%20-%202pac%20Feat%20Nas%20%20Jay-Z.mp3", mediaType: type, thumb: thumb, genre: genre, artist: artist),
      Song(id: 3, title: "Dear Mama part 2", album: album, path: "https://archive.org/download/2pac_-_Tupac_Duets/14%29%20Dear%20Mama%20Part%20II%20-%202pac%20Feat%20Eminem.mp3", mediaType: type, thumb: thumb, genre: genre, artist: artist),
      Song(id: 4, title: "I never Change", album: album, path: "https://archive.org/download/2pac_-_Tupac_Duets/09%29%20I%20Never%20Change%20-%202pac%20Feat%20Jadakiss%20The%20Game%20%20C.mp3", mediaType: type, thumb: thumb, genre: genre, artist: artist),
    ];
  }



  List<Song> smash() {
    Genre genre = Genre.rock;
    MediaType type = MediaType.internet;
    String album = "Live Chicago";
    String thumb = "https://ia902303.us.archive.org/27/items/tsp1993-07-26.fm.flacf/sp1993-07-26.fm.jpg?cnt=0";
    Artist artist = smashing;
    return [
      Song(id: 23, title: "Rocket", album: album, path: "https://archive.org/download/tsp1993-07-26.fm.flacf/01%20-%20Rocket.mp3", mediaType: type, thumb: thumb, genre: genre, artist: artist),
      Song(id: 24, title: "Cherub Rock", album: album, path: "https://archive.org/download/tsp1993-07-26.fm.flacf/02%20-%20Cherub%20Rock.mp3", mediaType: type, thumb: thumb, genre: genre, artist: artist),
      Song(id: 25, title: "Today", album: album, path: "https://archive.org/download/tsp1993-07-26.fm.flacf/03%20-%20Today.mp3", mediaType: type, thumb: thumb, genre: genre, artist: artist),
      Song(id: 26, title: "Disarm", album: album, path: "https://archive.org/download/tsp1993-07-26.fm.flacf/04%20-%20Disarm.mp3", mediaType: type, thumb: thumb, genre: genre, artist: artist),
      Song(id: 27, title: "Siva", album: album, path: "https://archive.org/download/tsp1993-07-26.fm.flacf/05%20-%20Siva.mp3", mediaType: type, thumb: thumb, genre: genre, artist: artist),
      Song(id: 28, title: "Mayonaise", album: album, path: "https://archive.org/download/tsp1993-07-26.fm.flacf/06%20-%20Mayonaise.mp3", mediaType: type, thumb: thumb, genre: genre, artist: artist),
      Song(id: 29, title: "Hummer", album: album, path: "https://archive.org/download/tsp1993-07-26.fm.flacf/07%20-%20Hummer.mp3", mediaType: type, thumb: thumb, genre: genre, artist: artist),
      Song(id: 30, title: "(I Am One)", album: album, path: "https://archive.org/download/tsp1993-07-26.fm.flacf/08%20-%20%28I%20Am%20One%29.mp3", mediaType: type, thumb: thumb, genre: genre, artist: artist),

    ];
  }

  List<Song> allDatas() {
    List<Song> all = [];
    all.addAll(tuPac());
    all.addAll(smash());
    all.add(mozart);
    return all;
  }

}