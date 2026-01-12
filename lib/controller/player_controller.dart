import 'package:flutter/material.dart';
import 'package:musique/model/raw_model/song.dart';
import 'package:musique/views/player_view.dart';

class MyPlayerController extends StatefulWidget {
  final Song songToPlay;
  final List<Song> playlist;
  const MyPlayerController({super.key, required this.songToPlay, required this.playlist});

  @override
  State<MyPlayerController> createState() => MyPlayerControllerState();

}

class MyPlayerControllerState extends State<MyPlayerController> {
  late Song song;

  @override
  void initState() {
    super.initState();
    song = widget.songToPlay;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PlayerView(
      song: song,
      onRepeatPressed: onRepeatPressed,
      onShufflePressed: onShufflePressed,
      onPlayPausePressed: onPlayPausePressed,
      onforwardPressed: onforwardPressed,
      onRewindPressed: onRewindPressed,
    );
  }

  Function onRepeatPressed() {
    return () {

    };

  }


  Function onShufflePressed() {
    return () {

    };

  }

  onPlayPausePressed() {

  }

  onforwardPressed() {

  }

  onRewindPressed() {

  }

}