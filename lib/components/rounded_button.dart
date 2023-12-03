import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RoundedButton extends StatelessWidget {
  String buttonText;
  Function() onPress;
  Color color;
  RoundedButton({
    required this.buttonText,
    required this.onPress,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
           
          child: Text(buttonText,style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
