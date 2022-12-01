import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserService {
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> createUser(User? user, String displayName) async {
    await users.doc(user!.uid).set({
      'uid': user.uid,
      'displayName': displayName,
      'email': user.email,
    });
  }

  Future<DocumentSnapshot> getUser(String? uid) async {
    return await users.doc(uid).get();
  }

  updateUser(displayName,email) async {
    try {
      final user = FirebaseAuth.instance.currentUser;

      await users.doc(user!.uid).update({
        'displayName': displayName,
        'email': email,
      });

      await user.updateDisplayName(displayName);
      await user.updateEmail(email);

      return {
        "type" : "success",
        "message" : "Güncelleme İşlemi Başarılı"
      };
    }
    on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return {
          "type" : "error",
          "message" : "Bu e-posta için hesap zaten var",
        };
      }
    } catch (e) {
      return {
        "type" : "error",
        "message" : "Hata: İşleminiz gerçekleştirilemedi. Lütfen yeniden deneyiniz",
      };
    }
  }
}