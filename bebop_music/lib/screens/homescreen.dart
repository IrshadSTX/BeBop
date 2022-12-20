import 'package:bebop_music/screens/drawer_screen.dart';
import 'package:bebop_music/screens/favouriteScreen.dart';
import 'package:bebop_music/screens/playlistScreen.dart';
import 'package:bebop_music/screens/provider/provider.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:bebop_music/screens/MusicPlayer/musicplayer.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final OnAudioQuery _audioQuery = OnAudioQuery();
  final AudioPlayer _audioPlayer = AudioPlayer();

  List<SongModel> allSongs = [];

  playSong(String? uri) {
    try {
      _audioPlayer.setAudioSource(AudioSource.uri(
        Uri.parse(uri!),
      ));
      _audioPlayer.play();
    } on Exception {
      log('Error parsing song');
    }
  }

  @override
  void initState() {
    super.initState();
    requestPermission();
  }

  void requestPermission() {
    Permission.storage.request();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 57, 4, 97),
        centerTitle: true,
        title: const Image(
          image: AssetImage('assets/images/bebop1.png'),
          width: 120,
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
        height: MediaQuery.of(context).size.width * 1.9,
        child: const NavigationDrawer(),
      ),
      body: SafeArea(
        child: Container(
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

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  ' Libraries',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          height: 10,
                          child: Column(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const FavouriteScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 130,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/favorite.jpg'),
                                      ),
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 153, 112, 210),
                                        width: 3,
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              const Text(
                                'Favourites',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 153, 112, 210),
                                    fontSize: 18,
                                    fontFamily: 'Poppins'),
                              ),
                              // column3
                            ],
                          ),
                        ),

                        Column(
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const PlaylistScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/playlist.jpg'),
                                    ),
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 153, 112, 210),
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            const Text(
                              'Playlists',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 153, 112, 210),
                                  fontSize: 18,
                                  fontFamily: 'Poppins'),
                            ),
                            // column3
                          ],
                        ),

                        Column(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/topbeats.jpeg'),
                                    ),
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 153, 112, 210),
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            const Text(
                              'Top Beats',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 153, 112, 210),
                                  fontSize: 18,
                                  fontFamily: 'Poppins'),
                            ),
                            // column3
                          ],
                        ),
                        //your widget items here
                      ],
                    ),
                  ),
                ),
                const Text(
                  ' Music Lists',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FutureBuilder<List<SongModel>>(
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
                      return const Center(child: Text("No Songs found"));
                    }
                    return Expanded(
                      child: Stack(
                        children: [
                          ListView.separated(
                            itemBuilder: ((context, index) {
                              allSongs.addAll(item.data!);
                              return Container(
                                height: 70,
                                width: 600,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color:
                                        const Color.fromARGB(255, 81, 21, 88),
                                  ),
                                ),
                                child: ListTile(
                                  leading: QueryArtworkWidget(
                                    id: item.data![index].id,
                                    type: ArtworkType.AUDIO,
                                    nullArtworkWidget:
                                        const Icon(Icons.music_note),
                                  ),
                                  title: Text(
                                    item.data![index].displayNameWOExt,
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                  iconColor: Colors.white,
                                  subtitle: Text("${item.data![index].artist}",
                                      style: const TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          color: Colors.white,
                                          fontSize: 12)),
                                  trailing: const Icon(Icons.more_vert),
                                  onTap: () {
                                    context
                                        .read<SongModelProvider>()
                                        .setId(item.data![index].id);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PlayerScreen(
                                            songModelList: [item.data![index]],
                                            audioPlayer: _audioPlayer,
                                          ),
                                        ));
                                  },
                                ),
                              );
                            }),
                            separatorBuilder: (context, index) => SizedBox(
                              height: 5,
                            ),
                            itemCount: item.data!.length,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PlayerScreen(
                                      songModelList: allSongs,
                                      audioPlayer: _audioPlayer,
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 15, 15),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 25,
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 30,
                                    color: Color.fromARGB(255, 61, 30, 103),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
