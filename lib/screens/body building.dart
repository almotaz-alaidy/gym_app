import 'package:flutter/material.dart';

import '../wedget/gesture.dart';

class BodyBuilding extends StatefulWidget {
  const BodyBuilding({super.key});

  @override
  State<BodyBuilding> createState() => _BodyBuildingState();
}

class _BodyBuildingState extends State<BodyBuilding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BUILD YORE BODY",
          style: TextStyle(
              fontSize: 40,
              fontFamily: "DancingScript-VariableFont_wght",
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://media.zicxa.com/1199702"),
                  fit: BoxFit.cover)),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                "THERE ARE MANY TABELS THATE YOU CANE DO IT TO BUILD YOUR BODY AND HER WE ARE GOING TO OFFER TO YOU SOME OF THESE TABELS AND CHOOSE WHATE ARE suitable TO YOU ",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "",
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Gestue(
                onTapiing: () {},
                title: "start to build healthy body ",
                fontsFamily: "Anton-Regular",
                image:
                    "https://www.fitnessyard.com/Portals/3/EasyDNNnews/524/524Body.jpg"),
            SizedBox(
              height: 20,
            ),
            Image(
                image: NetworkImage(
                    "https://i.pinimg.com/736x/c9/a1/dd/c9a1dd89440ad174fd5e8091df040059.jpg")),
            SizedBox(
              height: 20,
            ),
            Image(
                image: NetworkImage(
                    "https://i.pinimg.com/originals/7e/94/80/7e9480e9842832758bf9edcff07b2349.jpg")),
            SizedBox(
              height: 20,
            ),
            Image(
                image: NetworkImage(
                    "https://i.pinimg.com/736x/33/f2/f7/33f2f704b0ba8f069d4d9d73f1fea9f4.jpg")),
          ])),
    );
  }
}
