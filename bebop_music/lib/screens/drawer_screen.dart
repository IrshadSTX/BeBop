import 'package:bebop_music/screens/favouriteScreen.dart';
import 'package:bebop_music/screens/playlistScreen.dart';
import 'package:bebop_music/screens/privacypolicy.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 30, left: 20),
              child: Image(
                width: 120,
                image: AssetImage('assets/images/bebop1.png'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.playlist_add_check),
              title: const Text('Playlists'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PlaylistScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite_border_outlined),
              title: const Text('Favourite'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavouriteScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Share'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('Privacy Policy'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrivacyPolicyScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.gavel),
              title: const Text('Terms & Condition'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.error_outline),
              title: const Text('About Us'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
