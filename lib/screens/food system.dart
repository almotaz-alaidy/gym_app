import 'package:flutter/material.dart';

import '../wedget/gesture.dart';

class FoodSystem extends StatefulWidget {
  const FoodSystem({super.key});

  @override
  State<FoodSystem> createState() => _FoodSystemState();
}

class _FoodSystemState extends State<FoodSystem> {
  int _expandedIndex = -1;

  expandedFunction(x, index) {
    setState(() {
      // _expandedIndex = x;
      _expandedIndex = _expandedIndex == index ? -1 : index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "healthy Food System",
          style: TextStyle(
              fontSize: 30,
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
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                "THERE ARE MANY FoodSystem you cane use to save youre healthy",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "",
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Gestue(
                onTapiing: () {},
                title:
                    "Tips to maintain a healthy diet:1. Eat a variety of foods including fruits and vegetables• Eat daily a mixture of whole grains such as wheat, corn and rice, legumes such as lentils and beans, a large amount of fresh fruits and vegetables, with some animal-source foods (such as meat, fish, eggs and milk).• Choose, as much as possible, foods made from whole grains such as unprocessed corn, millet, oats, wheat and brown rice because they are rich in valuable fiber . ",
                fontsFamily: "Anton-Regular",
                image:
                    "https://cdni.rt.com/media/pics/2022.06/original/629baabe4c59b75c747f7828.jpg"),
            SizedBox(
              height: 20,
            ),
            Gestue(
                onTapiing: () {},
                title: "her you can choose the system you want start with it",
                fontsFamily: "Anton-Regular",
                image:
                    "https://www.atyabtabkha.com/tachyon/sites/2/2021/12/cedab2dac8e96c8e6a4b9cc936e7d53f5351450a.jpg"),
            SizedBox(
              height: 20,
            ),
            Image(
                image: NetworkImage(
                    "https://www.atyabtabkha.com/tachyon/sites/2/2021/12/3c19fbbdeb87b3b349346ed862fde38566c600c1.jpg")),
            SizedBox(
              height: 20,
            ),
            Image(
                image: NetworkImage(
                    "https://tse3.mm.bing.net/th?id=OIP.hFMWaqJPY_jggrj7LofCpgHaEK&pid=15.1")),
          ],
        ),
      ),
    );
  }
}
