import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../models/sms call.dart';
import '../models/socialmedia.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 77, 77, 77),
          bottom: TabBar(tabs: [
            IconButton(
              onPressed: () {},
              icon: Image(
                image: NetworkImage(
                  "https://static.vecteezy.com/ti/gratis-vektor/p3/3763787-social-media-facebook-instagram-logos-social-media-icons-black-and-white-set-kostenlos-vektor.jpg",
                ),
              ),
              iconSize: 80,
            ),
            IconButton(
              onPressed: () {},
              icon: Image(
                image: NetworkImage(
                    "https://e7.pngegg.com/pngimages/429/131/png-clipart-logo-gmail-email-google-webmail-gmail-text-logo.png"),
              ),
              iconSize: 80,
            ),
            IconButton(
              onPressed: () {},
              icon: Image(
                image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/15/15895.png"),
              ),
              iconSize: 80,
            ),
          ]),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 50, bottom: 30),
          alignment: Alignment.center,
          color: Color.fromARGB(255, 194, 193, 193),
          child: TabBarView(
            children: [
              Container(
                child: ListView(children: [
                  ContactWedget(
                      url: "https://www.facebook.com/v.fit.ladies.gym",
                      MyIcon: Ionicons.logo_facebook,
                      MySubTitle: "contact us on facebook",
                      MyTitle: "facebook"),
                  ContactWedget(
                      url: "https://www.instagram.com/gymkuma/",
                      MyIcon: Ionicons.logo_instagram,
                      MySubTitle: "contact us on instagrame",
                      MyTitle: "instagrame"),
                  ContactWedget(
                      url: "https://web.whatsapp.com/",
                      MyIcon: Ionicons.logo_whatsapp,
                      MySubTitle: "contact us on WhatsApp",
                      MyTitle: "WhatsApp"),
                ]),
              ),
              Container(
                child: ContactWedget(
                    url: "https://mail.google.com/mail",
                    MyIcon: Ionicons.mail_sharp,
                    MySubTitle: "contact us on gmail",
                    MyTitle: "email"),
              ),
              Container(
                child: ListView(
                  children: [
                    SmsCall(
                        x: "tel",
                        MyTitle: "call us",
                        MyIcon: Ionicons.call_sharp,
                        MySubTitle: "we will answer directly"),
                    SmsCall(
                        x: "sms",
                        MyTitle: "call us",
                        MyIcon: Ionicons.chatbubble_ellipses,
                        MySubTitle: "we will answer directly"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
