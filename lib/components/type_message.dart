import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TypeMessage extends StatelessWidget {
  String _massage = '';
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15, left: 5, right: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: controller,
              onChanged: (value) {
                _massage = value;
              },
              decoration: kTextFiledDecoration.copyWith(
                  hintText: 'Type your message here...'),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0))),
            ),
            onPressed: () {
              controller.clear();
              _firestore.collection('messages').add({
                'senderid': FirebaseAuth.instance.currentUser!.email.toString(),
                'message': _massage,
                 'time': FieldValue.serverTimestamp()
              });
            },
            icon: Icon(Icons.send_outlined),
          ),
        ],
      ),
    );
  }
}
