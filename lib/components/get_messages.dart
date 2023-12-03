import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class GetMessages extends StatelessWidget {
  bool isMe = false;
  GetMessages();

  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
      .collection('messages')
      .orderBy('time', descending: true)
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          );
        }

        return ListView(
          reverse: true,
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;

            if (data['senderid'] == FirebaseAuth.instance.currentUser!.email) {
              isMe = true;
            }
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment:
                      isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['senderid'],
                      style: TextStyle(
                          fontSize: 10, color: Colors.black.withOpacity(0.6)),
                    ),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.only(
                        topLeft: isMe ? Radius.circular(30.0) : Radius.zero,
                        bottomLeft: isMe
                            ? Radius.circular(30.0)
                            : Radius.circular(15.0),
                        bottomRight: isMe
                            ? Radius.circular(15.0)
                            : Radius.circular(30.0),
                        topRight: isMe ? Radius.zero : Radius.circular(30.0),
                      ),
                      color: isMe ? Colors.lightGreen : Colors.white,
                      child: Container(
                        child: Text(
                          data['message'],
                          style: TextStyle(fontSize: 15.0),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                    )
                  ]),
            );
          }).toList(),
        );
      },
    );
  }
}
