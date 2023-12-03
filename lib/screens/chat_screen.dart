import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/get_messages.dart';
import '../components/type_message.dart';

class ChatScreen extends StatefulWidget {
  static const String id = 'ChatScreen';

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          TextButton.icon(
              label: Text(
                'Logout',
                style: TextStyle(color: Colors.red),
              ),
              icon: Icon(
                Icons.logout_outlined,
                color: Colors.red,
              ),
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pop(context);
              }),
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: GetMessages()),
            TypeMessage(),
          ],
        ),
      ),
    );
  }
}
