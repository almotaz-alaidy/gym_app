import 'package:flutter/material.dart';

class My_button extends StatelessWidget {
  My_button({required this.onPressed, required this.MyText});
  Function()? onPressed;
  String? MyText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 20,
          ),
          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      onPressed: onPressed,
      child: Text(
        "${MyText}",
        style: TextStyle(color: Colors.blueAccent),
      ),
    );
  }
}
