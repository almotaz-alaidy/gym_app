import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SmsCall extends StatelessWidget {
  SmsCall(
      {required this.MyTitle,
      required this.MyIcon,
      required this.MySubTitle,
      required this.x});
  String? MyTitle;
  String? MySubTitle;
  IconData? MyIcon;
  String? x;
  Future<void> _makePhoneCall() async {
    final Uri launchUri = Uri(
      scheme: '$x',
      path: "0799999999",
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _makePhoneCall,
      child: ListTile(
        title: Text("$MyTitle"),
        subtitle: Text("$MySubTitle"),
        leading: Icon(MyIcon),
      ),
    );
  }
}
