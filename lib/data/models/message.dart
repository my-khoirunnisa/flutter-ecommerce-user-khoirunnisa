import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String id;
  final String textMessage;
  final String senderName;
  final Timestamp sendAt;
  final String liveId;

  Message(
    this.id,
    this.textMessage,
    this.senderName,
    this.sendAt,
    this.liveId,
  );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'textMessage': textMessage,
      'senderName': senderName,
      'sendAt': sendAt,
      'liveId': liveId,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      map['id'] ?? '',
      map['textMessage'] ?? '',
      map['senderName'] ?? '',
      map['sendAt'],
      map['liveId'] ?? '',
    );
  }

factory Message.fromDocumentSnapshot(DocumentSnapshot map) {
    return Message(
      map.id,
      map['textMessage'] ?? '',
      map['senderName'] ?? '',
      map['sendAt'],
      map['liveId'] ?? '',
    );
  }


  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) => Message.fromMap(json.decode(source));
}
