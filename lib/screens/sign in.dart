import 'package:ex/screens/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../wedget/textfield.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 187, 72, 10),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/564x/d4/e2/2a/d4e22a7e3594dd448a8a88ba579551b6.jpg"),
              fit: BoxFit.fill),
        ),
        child: ListView(children: [
          SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 60,
          ),
          MyTextField(
              myController: email,
              myHint: "enter yore email",
              myLabel: "youre email"),
          SizedBox(
            height: 60,
          ),
          TextField(
            obscureText: showPassword,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: Icon(
                    showPassword ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
                prefixIcon: const Icon(LineIcons.doubleCheck),
                hintText: 'enter youre pass',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: 'youre pass',
                labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                hintStyle: TextStyle(color: Colors.white, fontSize: 20)),
            controller: pass,
          ),
          SizedBox(
            height: 60,
          ),
          Divider(
            height: 50,
          ),
          TextButton(
            onPressed: () async {
              try {
                var authin = FirebaseAuth.instance;
                UserCredential user = await authin.signInWithEmailAndPassword(
                    email: email.text, password: pass.text);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Home();
                  },
                ));
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("sorry invalid email or pass")));
              }
            },
            child: Text(
              "sign in",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Divider(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "singub page");
            },
            child: Text(
              "sign ub",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ]),
      ),
    );
  }
}
