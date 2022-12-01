import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Status {
  /*String id;*/
  String username;
  String email;
  String password;

  Status(
      {/*required this.id,*/
      required this.username,
      required this.email,
      required this.password});

  factory Status.fromSnapshot(DocumentSnapshot snapshot) {
    return Status(
        /*id: snapshot.id,*/
        username: "username",
        email: "email",
        password: "password");
  }
}

class StatusService {
   FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Status> addStatus(String username, String email, String password) async {
    var ref = _firestore.collection("Status");
    username="empty username";

    var documentRef = await ref
        .add({'username': username, 'email': email, 'password': password});
    return Status(
        /*id: documentRef.id,*/
        username: username,
        email: email,
        password: password);
  }
}

/*
class AddUser extends StatelessWidget {
  final String fullName;
  final String company;
  final int age;

  AddUser(this.fullName, this.company, this.age);

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
        'full_name': fullName, // John Doe
        'company': company, // Stokes and Sons
        'age': age // 42
      })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return TextButton(
      onPressed: addUser,
      child: Text(
        "Add User",
      ),
    );
  }
}*/
