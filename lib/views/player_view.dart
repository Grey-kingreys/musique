import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musique/model/raw_model/song.dart';

class PlayerView extends StatelessWidget{
  final Song song;
  final EdgeInsets padding = EdgeInsets.all(8);
  final Container spacer = Container(
    width: 16,
  );
  final Color bg = Color.fromRGBO(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1);

  final Duration maxDuration;
  final Duration position;

  final Function() onRepeatPressed;
  final Function() onShufflePressed;
  final Function() onPlayPausePressed;
  final Function() onforwardPressed;
  final Function() onRewindPressed;
  final Function(double) onPositionChanged;



  PlayerView({
    super.key, required this.song,
    required this.onRepeatPressed,
    required this.onShufflePressed,
    required this.onPlayPausePressed,
    required this.onforwardPressed,
    required this.onRewindPressed,
    required this.maxDuration,
    required this.position,
    required this.onPositionChanged
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bg,
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
          Text(song.artist.name, style: GoogleFonts.signika(color: Colors.redAccent, fontSize: 35)),
          Text(song.title, style: GoogleFonts.signika(fontSize: 20, fontWeight: FontWeight.bold)),
          Card(
            child: Container(
              color: bg.withOpacity(0.75),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: onRepeatPressed,
                          icon: Icon(Icons.repeat)
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: padding,
                            child: IconButton(
                                onPressed: (){

                                },
                                icon: Icon(Icons.fast_rewind)
                            )
                          ),
                          Padding(padding: padding,
                              child: IconButton(
                                  onPressed: (){

                                  },
                                  icon: Icon(Icons.play_circle)
                              )
                          ),
                          Padding(padding: padding,
                              child: IconButton(
                                  onPressed: (){

                                  },
                                  icon: Icon(Icons.fast_forward)
                              )
                          ),

                        ],

                      ),

                      IconButton(
                          onPressed: onShufflePressed,
                          icon: Icon(Icons.shuffle)
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Row(),
                      Slider(
                        min: 0,
                        max: maxDuration.inSeconds.toDouble(),
                        value: position.inSeconds.toDouble(),
                        onChanged: onPositionChanged,
                        thumbColor: Colors.red,
                        activeColor: Colors.red,
                        inactiveColor: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
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