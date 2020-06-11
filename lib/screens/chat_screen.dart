import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (ctx, index) => Container(
          padding: EdgeInsets.all(8),
          child: Text("This workds!"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Firestore.instance
              .collection('chats/wiqksU1GZALMtGy4S6Rm/messages')
              .snapshots()
              .listen((data) {
            data.documents.forEach((document) {
              print(document['text']);
            });
          });
        },
      ),
    );
  }
}
