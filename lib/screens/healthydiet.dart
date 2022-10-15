import 'package:flutter/material.dart';

import '../wedget/gesture.dart';

class Healthydiet extends StatefulWidget {
  const Healthydiet({super.key});

  @override
  State<Healthydiet> createState() => _HealthydietState();
}

class _HealthydietState extends State<Healthydiet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Healhty diet",
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
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1483232539664-d89822fb5d3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG8lMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                  fit: BoxFit.cover)),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                "First week : Breakfast: 2 boiled eggs - one loaf of toast - a cup of green tea - one loaf of toast.Lunch: grilled or boiled chicken breast - 3 tablespoons of rice - a large mixed salad plate.Dinner: a large cup of fat-free yogurt - flaxseeds - a large mixed salad plate - two fruits of your choice.second week:Breakfast: a loaf of toast - a cup of milk, provided it is fat-free and without sugar - a fruit of your choice - a cup of green tea.Lunch: a can of tuna without oil - a large mixed salad plate - two fruits of your choice. Dinner: a drink of vegetables without broth - a cup of fat-free yogurt.the third week:Breakfast: a piece of cottage cheese - two cucumbers - 4 tablespoons of beans without oil.Lunch: 2 grilled fish - a large mixed salad plate - 3 tablespoons of rice or pasta - pineapple juice without sugar. Dinner: vegetable soup only.fourth week:Breakfast: a cup of skimmed yogurt - flax seeds - a loaf of toast - 5 nuts - a grapefruit.Lunch: lentils without meat - two cucumbers.Dinner: a loaf of bread toast - a plate of yogurt salad with cucumbers added.",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Anton-Regular",
                  color: Colors.white,
                  // fontWeight: FontWeight.bold
                ),
              ),
            ),
            Gestue(
                onTapiing: () {},
                title: "you can choose table to start youre diet ",
                fontsFamily: "Anton-Regular",
                image:
                    "https://i2.wp.com/wordss.cc/wp-content/uploads/2018/08/3445-1.jpg"),
            SizedBox(
              height: 20,
            ),
            Image(
                image: NetworkImage(
                    "https://www.kholoudabouzid.com/wp-content/uploads/2022/09/img_7211-380x260.jpg")),
            SizedBox(
              height: 20,
            ),
            Image(
                image: NetworkImage(
                    "https://dentrotheplusieurs.com/cfk/g8lkNz_yyk71b6cXC0j8xgHaFO.jpg")),
            SizedBox(
              height: 20,
            ),
            Image(
                image: NetworkImage(
                    "https://i0.wp.com/beautyy.org/wp-content/uploads/2016/07/20160719-4256.jpg?ssl=1")),
          ])),
    );
  }
}
