import 'package:flutter/material.dart';

class Text_fel extends StatelessWidget {
  Text_fel(
      {this.obscure,
      required this.TypeInput,
      required this.prefixIcon,
      this.controller});
  bool? obscure;
  String? TypeInput;
  Icon? prefixIcon;
  TextEditingController? controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        enabled: true,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2)),
          hintText: "Enter Your ${TypeInput} .",
          hintStyle: TextStyle(color: Colors.white),
          label: Text(
            "${TypeInput}",
            style: TextStyle(color: Colors.white),
          ),
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        maxLines: 1,
        maxLength: 40,
        cursorColor: Colors.white,
        textAlign: TextAlign.center,
        obscureText: obscure!,
      ),
    );
  }
}
