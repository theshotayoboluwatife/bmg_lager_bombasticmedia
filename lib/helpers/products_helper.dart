/*
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/entry_model.dart';
import 'logger.dart';

class EntriesHelperClass {
  static FirebaseFirestore database = FirebaseFirestore.instance;
  static FirebaseAuth auth = FirebaseAuth.instance;

  static Future<void> uploadUserEntry(Entry entry) async {
    try {
      User? user = auth.currentUser;
      if (user == null) {
        logger.i('No user is currently signed in.');
        return;
      }

      final userId = user.uid;
      final docUser = database.collection('mood_entries').doc(userId);

      await docUser.set({'initialEntryTime': '#${DateTime.timestamp()}'});

      final entriesCollection = docUser.collection('entries');
      await entriesCollection.add(entry.toJson());

      logger.i('Demo entry added successfully!');
    } catch (e) {
      logger.i('Error uploading demo entry: $e');
      rethrow;
    }
  }

  static Future<void> uploadUserTmlEntry(TimeLineEntry tmlEntry) async {
    try {
      User? user = auth.currentUser;
      if (user == null) {
        logger.i('No user is currently signed in.');
        return;
      }

      final userId = user.uid;
      final docUser = database.collection('mood_entries').doc(userId);
      await docUser.set({'initialEntryTime': '#${DateTime.timestamp()}'});
      final entriesCollection = docUser.collection('timeline_entries');
      await entriesCollection.add(tmlEntry.toJson());

      logger.i('Entry added successfully!');
    } catch (e) {
      logger.i('Error uploading demo entry: $e');
      rethrow;
    }
  }

  static Future<List<Map<String, dynamic>>> fetchUserEntries() async {
    try {
      User? user = auth.currentUser;
      if (user == null) {
        logger.i('No user is currently signed in.');
        return [];
      }

      final userId = user.uid;
      final docUser = database.collection('mood_entries').doc(userId);
      final entriesCollection = docUser.collection('entries');

      QuerySnapshot<Map<String, dynamic>> querySnapshot =
      await entriesCollection.orderBy('time', descending: false).get();

      List<Map<String, dynamic>> entries =
      querySnapshot.docs.map((doc) => doc.data()).toList();

      return entries;
    } catch (e) {
      logger.i('Error fetching user entries: $e');
      rethrow;
    }
  }

  static Future<List<Map<String, dynamic>>> fetchUserTmlEntries() async {
    try {
      User? user = auth.currentUser;
      if (user == null) {
        logger.i('No user is currently signed in.');
        return [];
      }

      final userId = user.uid;
      final docUser = database.collection('mood_entries').doc(userId);
      final timelineEntriesCollection = docUser.collection('timeline_entries');

      QuerySnapshot<Map<String, dynamic>> querySnapshot =
      await timelineEntriesCollection
          .orderBy('time', descending: false)
          .get();

      List<Map<String, dynamic>> tmlEntries =
      querySnapshot.docs.map((doc) => doc.data()).toList();

      return tmlEntries;
    } catch (e) {
      logger.i('Error fetching user entries: $e');
      rethrow;
    }
  }



}*/
