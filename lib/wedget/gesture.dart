import 'package:flutter/material.dart';

class Gestue extends StatelessWidget {
  Gestue(
      {required this.onTapiing,
      required this.title,
      required this.fontsFamily,
      required this.image});
  Function() onTapiing;
  String? title;
  String? fontsFamily;
  String? image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapiing,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 30),
            child: Text(
              "$title",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "$fontsFamily",
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("$image"), fit: BoxFit.fill),
            ),
          )
        ],
      ),
    );
  }
}
