import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 57, 4, 97),
        title: Text('Favourites'),
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
        child: Column(
          children: [
            SizedBox(
              height: 20,
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
    );
  }
}
