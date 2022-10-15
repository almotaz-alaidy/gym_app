import 'package:ex/screens/Home.dart';
import 'package:ex/screens/services%20fire%20base%20crud.dart';
import 'package:flutter/material.dart';

import 'listpage.dart';

class AddPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //  implement createState ______________________
    return _AddPage();
  }
}

class _AddPage extends State<AddPage> {
  final _saturday = TextEditingController();
  final _sunday = TextEditingController();
  final _monday = TextEditingController();
  final _tuesday = TextEditingController();
  final _wensday = TextEditingController();
  final _thursday = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final staurdayField = TextFormField(
        controller: _saturday,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "saturday",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final sundayField = TextFormField(
        controller: _sunday,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "sunday",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final mondayField = TextFormField(
        controller: _monday,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "monday",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final tuesdayField = TextFormField(
        controller: _tuesday,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "tuesday",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final wenesdayField = TextFormField(
        controller: _wensday,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "wenesday",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final thursdayField = TextFormField(
        controller: _thursday,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "thursday",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    final viewListbutton = TextButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil<dynamic>(
            context,
            MaterialPageRoute<dynamic>(
              builder: (BuildContext context) => ListPage(),
            ),
            (route) => false, //To disable back feature set to false
          );
        },
        child: const Text('View the table'));

    final SaveButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Theme.of(context).primaryColor,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            var response = await FirebaseCrud.addInfo(
                saturday: _saturday.text,
                sunday: _sunday.text,
                monday: _monday.text,
                Tuesday: _tuesday.text,
                Wednesday: _wensday.text,
                Thursday: _thursday.text);
            if (response.code != 200) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(response.message.toString()),
                    );
                  });
            } else {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(response.message.toString()),
                    );
                  });
            }
          }
        },
        child: Text(
          "Save",
          style: TextStyle(color: Theme.of(context).primaryColorLight),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('create your weekly tabels'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    staurdayField,
                    const SizedBox(height: 25.0),
                    sundayField,
                    const SizedBox(height: 35.0),
                    mondayField,
                    const SizedBox(height: 35.0),
                    tuesdayField,
                    const SizedBox(height: 35.0),
                    wenesdayField,
                    const SizedBox(height: 35.0),
                    thursdayField,
                    viewListbutton,
                    const SizedBox(height: 45.0),
                    SaveButon,
                    const SizedBox(height: 15.0),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Home();
                              },
                            ));
                          });
                        },
                        child: Text(
                          "back to home screen ",
                          style: TextStyle(fontSize: 25),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
