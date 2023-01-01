import 'package:bebop_music/model/bebop_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../controller/getRecent_Controller.dart';
import '../screens/splash_screen.dart';
import 'favourite_db.dart';

class PlaylistDb {
  static ValueNotifier<List<BebopModel>> playlistNotifier = ValueNotifier([]);

  static Future<void> addPlaylist(BebopModel value) async {
    final playlistDb = Hive.box<BebopModel>('playlistDb');
    await playlistDb.add(value);
    playlistNotifier.value.add(value);
  }

  static Future<void> getAllPlaylist() async {
    final playlistDb = Hive.box<BebopModel>('playlistDb');
    playlistNotifier.value.clear();
    playlistNotifier.value.addAll(playlistDb.values);
    playlistNotifier.notifyListeners();
  }

  static Future<void> deletePlaylist(int index) async {
    final playlistDb = Hive.box<BebopModel>('playlistDb');
    await playlistDb.deleteAt(index);
    getAllPlaylist();
  }

  static Future<void> resetApp(context) async {
    final playlistDb = Hive.box<BebopModel>('playlistDb');
    final musicDb = Hive.box<int>('FavoriteDB');
    final recentDb = await Hive.openBox('recentSongNotifier');
    final mostPlayedDb = await Hive.openBox('mostlyPlayedNotifier');
    await mostPlayedDb.clear();
    await musicDb.clear();
    await playlistDb.clear();
    await recentDb.clear();
    // GetMostlyPlayedController.mostlyPlayedSong.clear();
    // GetMostlyPlayedController.mostlyPlayed.clear();
    GetRecentSongController.recentlyPlayed.clear();
    FavoriteDb.favoriteSongs.value.clear();
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const SplashScreen()),
        (route) => false);
  }

  static Future<void> editList(int id, BebopModel value) async {
    final playlistDb = Hive.box<BebopModel>('editPlaylistDb');
    await playlistDb.put(id, value);
    getAllPlaylist();
  }
}
