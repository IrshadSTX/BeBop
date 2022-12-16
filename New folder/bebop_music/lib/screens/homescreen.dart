import 'package:bebop_music/screens/MusicPlayer/musicplayer.dart';
import 'package:bebop_music/screens/drawer_screen.dart';
import 'package:bebop_music/screens/favouriteScreen.dart';
import 'package:bebop_music/screens/playlistScreen.dart';
import 'package:bebop_music/screens/widgets/allsongs.dart';
import 'package:bebop_music/screens/widgets/moreSelect.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 57, 4, 97),
        centerTitle: true,
        title: Image(
          image: AssetImage('assets/images/bebop1.png'),
          width: 120,
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        height: MediaQuery.of(context).size.width * 1.9,
        child: NavigationDrawer(),
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
                // Text(
                //   ' Libraries',
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontFamily: 'Poppins',
                //     fontSize: 20,
                //   ),
                // ),
                // SizedBox(
                //   height: 10,
                // ),
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
                                      builder: (context) => FavouriteScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 130,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/favorite.jpg'),
                                      ),
                                      border: Border.all(
                                        color:
                                            Color.fromARGB(255, 153, 112, 210),
                                        width: 3,
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              Text(
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
                                    builder: (context) => PlaylistScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/playlist.jpg'),
                                    ),
                                    border: Border.all(
                                      color: Color.fromARGB(255, 153, 112, 210),
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            Text(
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
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AllSongs(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/topbeats.jpeg'),
                                    ),
                                    border: Border.all(
                                      color: Color.fromARGB(255, 153, 112, 210),
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            Text(
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
                Text(
                  ' Music Lists',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlayerScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 600,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 81, 21, 88),
                      ),
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: Color.fromARGB(255, 28, 13, 86),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image(
                          image: AssetImage('assets/images/headset.png'),
                        ),
                      ),
                      title: Text(
                        'Music is life',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      subtitle: Text(
                        'Jimmy Carter',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 80,
                    width: 600,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 81, 21, 88),
                      ),
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: Color.fromARGB(255, 28, 13, 86),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image(
                          image: AssetImage('assets/images/nirvana.jpg'),
                        ),
                      ),
                      title: Text(
                        'Smell Like teen spirit',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      subtitle: Text(
                        'Nirvana',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                      trailing: TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: ((context) => MoreSelect()),
                          //   ),
                          // );
                          MoreSelect();
                        },
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 80,
                    width: 600,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 81, 21, 88),
                      ),
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: Color.fromARGB(255, 28, 13, 86),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image(
                          image: AssetImage('assets/images/micheal.jpeg'),
                        ),
                      ),
                      title: Text(
                        'Billie Jean',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      subtitle: Text(
                        'Michael Jackson',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 80,
                    width: 600,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 81, 21, 88),
                      ),
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: Color.fromARGB(255, 28, 13, 86),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image(
                          image: AssetImage('assets/images/bobdylan.jpeg'),
                        ),
                      ),
                      title: Text(
                        'Smell Like teen spirit',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      subtitle: Text(
                        'Nirvana',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
