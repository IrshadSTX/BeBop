import 'package:bebop_music/screens/favouriteScreen.dart';
import 'package:bebop_music/screens/playlistScreen.dart';
import 'package:bebop_music/screens/privacypolicy.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30, left: 20),
                child: Image(
                  width: 120,
                  image: AssetImage('assets/images/bebop1.png'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.playlist_add_check),
                title: Text('Playlists'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaylistScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.favorite_border_outlined),
                title: Text('Favourite'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FavouriteScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text('Privacy Policy'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrivacyPolicyScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.gavel),
                title: Text('Terms & Condition'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.error_outline),
                title: Text('About Us'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
