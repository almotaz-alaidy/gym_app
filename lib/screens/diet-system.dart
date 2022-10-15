import 'package:flutter/material.dart';

import '../wedget/gesture.dart';
import 'healthydiet.dart';
import 'kito.dart';

class DietSystem extends StatefulWidget {
  const DietSystem({super.key});

  @override
  State<DietSystem> createState() => _DietSystemState();
}

class _DietSystemState extends State<DietSystem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "start yore diet",
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
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1598760122223-45f0f18a1bbd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80"),
                  fit: BoxFit.cover)),
          child: ListView(children: [
            Gestue(
                onTapiing: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Healthydiet();
                    },
                  ));
                },
                title: "healthy diet ",
                fontsFamily: "Anton-Regular",
                image:
                    "https://altibbi.com//theme/altibbi/images/term/default-term.webp"),
            Divider(
              height: 30,
            ),
            Gestue(
                onTapiing: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Kito();
                    },
                  ));
                },
                title: "kito ",
                fontsFamily: "Anton-Regular",
                image:
                    "https://i0.wp.com/post.healthline.com/wp-content/uploads/2021/12/ingredients-healthy-eating-food-eggs-salmon-vegetables-1296x728-header-1.jpg?w=1155&h=1528"),
          ])),
    );
  }
}
