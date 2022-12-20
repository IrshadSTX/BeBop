import 'dart:developer';
import 'package:bebop_music/screens/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:provider/provider.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen(
      {Key? key, required this.songModelList, required this.audioPlayer})
      : super(key: key);
  final List<SongModel> songModelList;
  final AudioPlayer audioPlayer;

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  Duration _duration = const Duration();
  Duration _position = const Duration();

  List<AudioSource> songList = [];

  int currentIndex = 0;
  bool _isPlaying = false;
  @override
  void initState() {
    super.initState();
    playSong();
  }

  void playSong() {
    try {
      for (var element in widget.songModelList) {
        songList.add(
          AudioSource.uri(
            Uri.parse(element.uri!),
            tag: MediaItem(
                id: element.id.toString(),
                album: element.album ?? "No Album",
                title: element.displayNameWOExt,
                artUri: Uri.parse(element.id.toString())),
          ),
        );
      }
      widget.audioPlayer
          .setAudioSource(ConcatenatingAudioSource(children: songList));
      widget.audioPlayer.play();
      _isPlaying = true;
    } on Exception {
      log("Cannot Parse Song");
    }
    widget.audioPlayer.durationStream.listen((d) {
      setState(() {
        _duration = d!;
      });
    });
    widget.audioPlayer.positionStream.listen((p) {
      setState(() {
        _position = p;
      });
    });
    listenToSongIndex() {
      (widget.audioPlayer.currentIndexStream.listen(
        (event) {
          setState(() {
            if (event != null) {
              currentIndex = event;
            }
            context
                .read<SongModelProvider>()
                .setId(widget.songModelList[currentIndex].id);
          });
        },
      ));
    }
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
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            color: Color.fromARGB(255, 147, 118, 214)),
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
                            _position.toString().split('.')[0],
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
                            _duration.toString().split('.')[0],
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
                              if (widget.audioPlayer.hasPrevious) {
                                widget.audioPlayer.seekToPrevious();
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
                                  widget.audioPlayer.pause();
                                } else {
                                  widget.audioPlayer.play();
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
                              if (widget.audioPlayer.hasNext) {
                                widget.audioPlayer.seekToNext();
                              }
                            },
                            icon: const Icon(
                              Icons.skip_next,
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              iconSize: 30,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.shuffle,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              iconSize: 30,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.repeat,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
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
    widget.audioPlayer.seek(duration);
  }
}

class ArtWorkWidget extends StatelessWidget {
  const ArtWorkWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QueryArtworkWidget(
      id: context.watch<SongModelProvider>().id,
      type: ArtworkType.AUDIO,
      artworkHeight: 200,
      artworkWidth: 200,
      artworkFit: BoxFit.cover,
      nullArtworkWidget: const Icon(
        Icons.music_note,
        size: 200,
      ),
    );
  }
}
