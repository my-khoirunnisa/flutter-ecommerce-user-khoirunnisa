import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/message.dart';

class FirestoreRemoteDatasource {
  FirestoreRemoteDatasource._init();

  static FirestoreRemoteDatasource instance = FirestoreRemoteDatasource._init();

  Future<void> addMessage(Message message) async {
    await FirebaseFirestore.instance
        .collection('messages')
        .add(message.toMap());
  }

  Stream<List<Message>> getMessages(String liveId) {
    return FirebaseFirestore.instance
        .collection('messages')
        .where('liveId', isEqualTo: liveId)
        .orderBy('sendAt')
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Message.fromDocumentSnapshot(doc))
            .toList());
  }
}
