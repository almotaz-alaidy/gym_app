import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.blue.shade600),
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        child: Center(
          child: Column(children: const [
            SizedBox(
              height: 40,
            ),
            CircleAvatar(
              radius: 80,
              foregroundImage: NetworkImage(
                  "https://pedido-estaran.com/cfvwfd/uNW-2MdwBsOy2D3AjbZl3gHaLH.jpg"),
            ),
            SizedBox(
              height: 40,
            ),
            Text(""),
            SizedBox(
              height: 40,
            ),
            Text("abdalraheem@gmail.com")
          ]),
        ),
      ),
    );
  }
}
