import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/respons.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection = _firestore.collection("my table");

class FirebaseCrud {
//CRUD method here

// CREATE ifo table record______________________________________________________________________

  static Future<Response> addInfo({
    required String saturday,
    required String sunday,
    required String monday,
    required String Tuesday,
    required String Wednesday,
    required String Thursday,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection.doc();

    Map<String, dynamic> data = <String, dynamic>{
      "saturday": saturday,
      "Sunday": sunday,
      "Monday": monday,
      "Tuesday": Tuesday,
      "Wednesday": Wednesday,
      "Thursday": Thursday
    };

    var result = await documentReferencer.set(data).whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully added to the database";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }
  // _________________________________________________________________________________________________________

  // Read employee records____________________________________________________________________________________
  static Stream<QuerySnapshot> readInfo() {
    CollectionReference notesItemCollection = _Collection;

    return notesItemCollection.snapshots();
  }

  // Update employee record_______________________________________________________________________________
  static Future<Response> updateInfo({
    required String saturday,
    required String sunday,
    required String monday,
    required String Tuesday,
    required String Wednesday,
    required String Thursday,
    required String docId,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection.doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "saturday": saturday,
      "Sunday": sunday,
      "Monday": monday,
      "Tuesday": Tuesday,
      "Wednesday": Wednesday,
      "Thursday": Thursday
    };

    await documentReferencer.update(data).whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully updated ";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }

  // _________________________________________________________________________________________
  // Delete Employee record____________________________________________________________________
  static Future<Response> deleteInfo({
    required String docId,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection.doc(docId);

    await documentReferencer.delete().whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully Deleted ";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }
  // _____________________________________________________________
  //

}
