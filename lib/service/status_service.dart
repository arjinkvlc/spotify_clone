import 'package:cloud_firestore/cloud_firestore.dart';

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
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

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
