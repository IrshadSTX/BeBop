import 'package:bebop_music/screens/MusicPlayer/musicplayer.dart';

import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';

import '../controller/get_all_song.dart';
import '../db/recent_db.dart';

class RecentlyPlayed extends StatefulWidget {
  const RecentlyPlayed({super.key});

  @override
  State<RecentlyPlayed> createState() => _RecentlyPlayedState();
}

class _RecentlyPlayedState extends State<RecentlyPlayed> {
  final OnAudioQuery _audioQuery = OnAudioQuery();
  static List<SongModel> recentSong = [];
  @override
  void initState() {
    super.initState();
    allrecentsong();
    setState(() {});
  }

  Future allrecentsong() async {
    await GetRecentSong.getRecentSong();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Recent Songs',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 57, 4, 97),
        elevation: 0,
      ),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: GetRecentSong.recentSongNotifier,
                builder: (BuildContext context, List<SongModel> value,
                    Widget? child) {
                  if (value.isEmpty) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 200),
                      child: Text(
                        'No Song Recently played',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 18,
                        ),
                      ),
                    );
                  } else {
                    recentSong = value.reversed.toSet().toList();
                    return FutureBuilder<List<SongModel>>(
                      future: _audioQuery.querySongs(
                        sortType: null,
                        orderType: OrderType.ASC_OR_SMALLER,
                        uriType: UriType.EXTERNAL,
                        ignoreCase: true,
                      ),
                      builder: (context, item) {
                        if (item.data == null) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (item.data!.isEmpty) {
                          return const Center(
                              child: Text(
                            'No Songs Available',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ));
                        }
                        return ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              tileColor: Color.fromARGB(255, 12, 12, 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              minVerticalPadding: 10.0,
                              contentPadding: const EdgeInsets.all(0),
                              leading: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: QueryArtworkWidget(
                                  id: recentSong[index].id,
                                  type: ArtworkType.AUDIO,
                                  nullArtworkWidget: const Padding(
                                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                    child: Icon(
                                      Icons.music_note,
                                      color: Colors.white,
                                      size: 33,
                                    ),
                                  ),
                                ),
                              ),
                              title: Text(
                                recentSong[index].displayNameWOExt,
                                maxLines: 1,
                              ),
                              subtitle: Text(
                                '${recentSong[index].artist == "<unknown>" ? "Unknown Artist" : recentSong[index].artist}',
                                maxLines: 1,
                              ),
                              onTap: () {
                                GetAllSongController.audioPlayer.setAudioSource(
                                    GetAllSongController.createSongList(
                                        recentSong),
                                    initialIndex: index);
                                GetAllSongController.audioPlayer.play();
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return PlayerScreen(
                                      songModelList: recentSong);
                                }));
                              },
                            );
                          },
                          itemCount: recentSong.length,
                          separatorBuilder: (context, index) {
                            return const Divider(
                              height: 10.0,
                            );
                          },
                        );
                      },
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
