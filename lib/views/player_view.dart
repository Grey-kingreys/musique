import 'package:flutter/material.dart';
import 'package:musique/model/raw_model/song.dart';

class PlayerView extends StatelessWidget{
  final Song song;
  final EdgeInsets padding = EdgeInsets.all(8);
  final Container spacer = Container(
    width: 16,
  );

  PlayerView({super.key, required this.song});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(song.title),
      ),
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            child: Image.network(
                song.thumb,
                fit: BoxFit.fill,
                height: size.width / 2,
            ),
          ),
          const Divider(thickness: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: null, icon: Icon(Icons.ios_share)),
              spacer,
              IconButton(onPressed: null, icon: Icon(Icons.menu)),
              spacer,
              IconButton(onPressed: null, icon: Icon(Icons.whatshot))


            ],
          ),
          Text(song.artist.name),
          Text(song.title),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: null, icon: Icon(Icons.speaker)),
              IconButton(onPressed: null, icon: Icon(Icons.timer)),
              IconButton(onPressed: null, icon: Icon(Icons.whatshot_outlined)),
            ],
          )
        ],
      )),
    );
  }

}