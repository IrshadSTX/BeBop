import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 57, 4, 97),
        title: Text('Playlists'),
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
        child: Expanded(
          child: SizedBox(
              // height: 400,
              width: double.infinity,
              child: ListView.builder(
                itemBuilder: ((context, index) {
                  // allSongs.addAll(items.data!);
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      color: const Color.fromARGB(255, 18, 2, 61),
                      shadowColor: Colors.purpleAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                              color: Color.fromARGB(255, 132, 0, 255))),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/music.jpg',
                            fit: BoxFit.fill,
                            width: double.infinity,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Center(
                              child: Text(
                                'Playlist ${index + 1}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: 'poppins'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
                itemCount: 2,
              )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(255, 57, 4, 97),
      ),
    );
  }
}
