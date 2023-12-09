import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FirestoreRepository {
  FirestoreRepository(this._firestore);
  final FirebaseFirestore _firestore;

  Future<void> addJob(String uid, String title, String company) async {
    final docRef = await _firestore.collection('jobs').add({
      // storing uid as a document field is an intentional mistake/compromise that'll be changed later
      'uid': uid,
      'title': title,
      'company': company,
    });
    debugPrint(docRef.id);
  }

  Query<Map<String, dynamic>> jobsQuery() {
    return _firestore.collection('jobs');
  }
}

final firestoreRepositoryProvider = Provider<FirestoreRepository>((ref) {
  return FirestoreRepository(FirebaseFirestore.instance);
});
