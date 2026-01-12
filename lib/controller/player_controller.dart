import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:musique/model/enums/media_type.dart';
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

  late AudioPlayer audioPlayer;
  AudioCache? audioCache;

  Duration position = const Duration(seconds: 0);
  Duration maxDuration = const Duration(seconds: 0);

  bool playShuffle = false;
  bool repeat = false;

  @override
  void initState() {
    super.initState();
    song = widget.songToPlay;
    setupPlayer();
  }

  @override
  void dispose() {
    clearPlayer();
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
      maxDuration: maxDuration,
      position: position,
      onPositionChanged: onPositionChanged, shuffle: false, repeat: false,
    );
  }

  onRepeatPressed() {
    setState(() {
      repeat = !repeat;
    });
  }


  onShufflePressed() {
    setState(() {
      playShuffle = !playShuffle;
    });

  }


  setupPlayer() async {
    audioPlayer = AudioPlayer();

    if (song.mediaType == MediaType.internet) {
      await audioPlayer.play(
        UrlSource(song.path),
      );
    } else {
      await audioPlayer.play(
        AssetSource(song.path),
      );
    }
  }



  onPlayPausePressed() {

  }

  onforwardPressed() {

  }

  onRewindPressed() {

  }

  onPositionChanged(double newPosition) {

  }

  clearPlayer() {
    audioPlayer.stop();
    audioPlayer.dispose();
    if(audioCache != null) audioCache?.clearAll();
    audioCache = null;
  }

}