import 'dart:developer';
import 'package:bebop_music/controller/get_all_song.dart';
import 'package:bebop_music/screens/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';
import '../../db/favourite_db.dart';
import '../widgets/artWork.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({Key? key, required this.songModelList}) : super(key: key);
  final List<SongModel> songModelList;

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  Duration _duration = const Duration();
  Duration _position = const Duration();
  bool _isPlaying = false;
  bool _isLooping = false;
  bool _isShuffling = false;
  List<AudioSource> songList = [];
  int currentIndex = 0;
  @override
  void initState() {
    GetAllSongController.audioPlayer.currentIndexStream.listen((index) {
      if (index != null) {
        setState(() {
          currentIndex = index;
        });
        GetAllSongController.currentIndexes = index;
      }
    });
    super.initState();
    playSong();
  }

  String _formatDuration(Duration? duration) {
    if (duration == null) {
      return '--:--';
    } else {
      String minutes = duration.inMinutes.toString().padLeft(2, '0');
      String seconds =
          duration.inSeconds.remainder(60).toString().padLeft(2, '0');
      return '$minutes:$seconds';
    }
  }

  void playSong() {
    GetAllSongController.audioPlayer.play();
    GetAllSongController.audioPlayer.durationStream.listen((d) {
      setState(() {
        _duration = d!;
      });
    });
    GetAllSongController.audioPlayer.positionStream.listen((p) {
      setState(() {
        _position = p;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Color.fromARGB(255, 5, 3, 69),
              Colors.black,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      FavoriteDb.favoriteSongs.notifyListeners();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  const Text(
                    'NOW PLAYING',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                        size: 25,
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, right: 10, left: 10),
                child: Center(
                  child: Column(
                    children: [
                      const ArtWorkWidget(),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.songModelList[currentIndex].displayNameWOExt,
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            color: Color.fromARGB(255, 219, 212, 234)),
                      ),
                      Text(
                        widget.songModelList[currentIndex].artist.toString() ==
                                "<unknown>"
                            ? "Unknown Artist"
                            : widget.songModelList[currentIndex].artist
                                .toString(),
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            color: Color.fromARGB(255, 147, 118, 214)),
                      ),
                      Row(
                        children: [
                          Text(
                            _formatDuration(_position),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 183, 163, 163),
                            ),
                          ),
                          Expanded(
                            child: Slider(
                              activeColor: Colors.amber,
                              min: const Duration(microseconds: 0)
                                  .inSeconds
                                  .toDouble(),
                              value: _position.inSeconds.toDouble(),
                              max: _duration.inSeconds.toDouble(),
                              onChanged: (value) {
                                setState(() {
                                  changeToSeconds(value.toInt());
                                  value = value;
                                });
                              },
                            ),
                          ),
                          Text(
                            _formatDuration(_duration),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 183, 163, 163),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            iconSize: 50,
                            onPressed: () {
                              if (GetAllSongController
                                  .audioPlayer.hasPrevious) {
                                GetAllSongController.audioPlayer
                                    .seekToPrevious();
                              }
                              _isPlaying = !_isPlaying;
                            },
                            icon: const Icon(
                              Icons.skip_previous_sharp,
                              color: Colors.amber,
                            ),
                          ),
                          IconButton(
                            iconSize: 80,
                            onPressed: () {
                              setState(() {
                                if (_isPlaying) {
                                  GetAllSongController.audioPlayer.pause();
                                } else {
                                  GetAllSongController.audioPlayer.play();
                                }
                                _isPlaying = !_isPlaying;
                              });
                            },
                            icon: Icon(
                              _isPlaying
                                  ? Icons.pause_circle
                                  : Icons.play_circle,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            iconSize: 50,
                            onPressed: () {
                              if (GetAllSongController.audioPlayer.hasNext) {
                                GetAllSongController.audioPlayer.seekToNext();
                              }
                            },
                            icon: const Icon(
                              Icons.skip_next,
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            iconSize: 30,
                            onPressed: () {
                              setState(() {
                                if (_isShuffling == false) {
                                  GetAllSongController.audioPlayer
                                      .setShuffleModeEnabled(true);
                                } else {
                                  GetAllSongController.audioPlayer
                                      .setShuffleModeEnabled(false);
                                }
                                _isShuffling = !_isShuffling;
                              });
                            },
                            icon: _isShuffling
                                ? const Icon(
                                    Icons.shuffle_rounded,
                                    color: Colors.amber,
                                  )
                                : const Icon(
                                    Icons.shuffle_rounded,
                                    color: Colors.white,
                                  ),
                          ),
                          IconButton(
                              iconSize: 30,
                              onPressed: () {
                                setState(() {
                                  if (_isLooping) {
                                    GetAllSongController.audioPlayer
                                        .setLoopMode(LoopMode.all);
                                  } else {
                                    GetAllSongController.audioPlayer
                                        .setLoopMode(LoopMode.one);
                                  }
                                  _isLooping = !_isLooping;
                                });
                              },
                              icon: _isLooping
                                  ? const Icon(
                                      Icons.repeat,
                                      color: Colors.amber,
                                    )
                                  : Icon(
                                      Icons.repeat,
                                      color: Colors.white,
                                    )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changeToSeconds(int seconds) {
    Duration duration = Duration(seconds: seconds);
    GetAllSongController.audioPlayer.seek(duration);
  }
}
