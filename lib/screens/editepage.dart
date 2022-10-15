import 'package:flutter/material.dart';

import '../models/classes..dart';
import 'listpage.dart';
import 'services fire base crud.dart';

class EditPage extends StatefulWidget {
  final Tabels? info;
  EditPage({this.info});

  @override
  State<StatefulWidget> createState() {
    //  implement createState _________________________________________________________
    return _EditPage();
  }
}

class _EditPage extends State<EditPage> {
  final _saturday = TextEditingController();
  final _sunday = TextEditingController();
  final _monday = TextEditingController();
  final _tuseday = TextEditingController();
  final _wenesday = TextEditingController();
  final _thursday = TextEditingController();
  final _docid = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    _docid.value = TextEditingValue(text: widget.info!.uid.toString());
    _saturday.value = TextEditingValue(text: widget.info!.saturday.toString());
    _monday.value = TextEditingValue(text: widget.info!.sunday.toString());
    _sunday.value = TextEditingValue(text: widget.info!.monday.toString());
    _tuseday.value = TextEditingValue(text: widget.info!.monday.toString());
    _wenesday.value = TextEditingValue(text: widget.info!.monday.toString());
    _thursday.value = TextEditingValue(text: widget.info!.monday.toString());
  }

  @override
  Widget build(BuildContext context) {
    final DocIDField = TextField(
        controller: _docid,
        readOnly: true,
        autofocus: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    final saturdayField = TextFormField(
        controller: _saturday,
        autofocus: true,
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
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
    final tusdayField = TextFormField(
      controller: _tuseday,
      autofocus: false,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required';
        }
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "tuseday",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
    final wenesdayField = TextFormField(
      controller: _wenesday,
      autofocus: false,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required';
        }
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "wensday",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
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
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final viewListbutton = TextButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil<dynamic>(
            context,
            MaterialPageRoute<dynamic>(
              builder: (BuildContext context) => ListPage(),
            ),
            (route) => false, //if you want to disable back feature set to false
          );
        },
        child: const Text('View List of days'));

    final SaveButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Theme.of(context).primaryColor,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            var response = await FirebaseCrud.updateInfo(
                saturday: _saturday.text,
                sunday: _monday.text,
                monday: _sunday.text,
                Tuesday: _tuseday.text,
                Wednesday: _wenesday.text,
                Thursday: _thursday.text,
                docId: _docid.text);
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
          } else {
            print("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
          }
        },
        child: Text(
          "Update",
          style: TextStyle(color: Theme.of(context).primaryColorLight),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('edite your weekly tabels'),
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
                    // DocIDField,
                    const SizedBox(height: 25.0),
                    saturdayField,
                    const SizedBox(height: 25.0),
                    sundayField,
                    const SizedBox(height: 35.0),
                    mondayField,
                    const SizedBox(height: 35.0),
                    tusdayField,
                    const SizedBox(height: 35.0),
                    wenesdayField,
                    const SizedBox(height: 35.0),
                    thursdayField,
                    viewListbutton,
                    const SizedBox(height: 45.0),
                    SaveButon,
                    const SizedBox(height: 15.0),
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
