import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

Future<void> Open() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

late Uri _url;

class ContactWedget extends StatelessWidget {
  ContactWedget({
    required this.MyIcon,
    required this.MySubTitle,
    required this.MyTitle,
    required this.url,
  });
  IconData? MyIcon;
  String? MyTitle;
  String? MySubTitle;
  String? url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _url = Uri.parse('$url');
        Open();
      },
      child: Container(
        child: ListTile(
          leading: Icon(
            MyIcon,
            // color: Colors.red,
          ),
          title: Text("$MyTitle"),
          subtitle: Text("$MySubTitle"),
        ),
      ),
    );
    ;
  }
}
