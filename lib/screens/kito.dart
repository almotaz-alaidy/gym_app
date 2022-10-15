import 'package:flutter/material.dart';

import '../wedget/gesture.dart';

class Kito extends StatefulWidget {
  const Kito({super.key});

  @override
  State<Kito> createState() => _KitoState();
}

class _KitoState extends State<Kito> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "KITO SYSTEM",
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
                      "https://www.kibrispdr.org/data/1099/hd-background-download-4.jpg"),
                  // https://wallpaper.dog/large/10762153.jpg"),
                  fit: BoxFit.cover)),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                "The keto diet is a low-carb, high-fat diet that helps you lose weight and offers many health benefits. Specifically against diabetes, cancer, epilepsy and Alzheimer's disease.",
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
                title: "her some systems that mad on kito diet:",
                fontsFamily: "Anton-Regular",
                image:
                    "https://images.ctfassets.net/psi7gc0m4mjv/bd388ba8-cb05-4f89-9b5c-26dc6662e080/f2ebeb270b296a1bafef8a513e1e6564/issa_ketodiet_blogheader.jpg"),
            SizedBox(
              height: 20,
            ),
            Image(
                image: NetworkImage(
                    "http://i0.wp.com/i.pinimg.com/originals/cb/0f/a0/cb0fa0ab63bf561f257d623f5140b032.png?resize=160,120")),
            SizedBox(
              height: 20,
            ),
            Image(
                image: NetworkImage(
                    "https://i.pinimg.com/originals/00/0c/97/000c9758b5e2c65100a1cf9436d1a6a9.png")),
            SizedBox(
              height: 20,
            ),
            Image(
                image: NetworkImage(
                    "https://i.pinimg.com/originals/cb/08/99/cb0899501c19cacfec6582ed9efd067c.jpg")),
          ])),
    );
  }
}
