import 'package:firebase_auth/firebase_auth.dart';
import 'user_service.dart';
class AuthService{
  final FirebaseAuth firebaseAuth=FirebaseAuth.instance;

  Future login(emailAddress, password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return {
        "type" : "success",
        "message" : "Kayıt İşlemi Başarılı"
      };
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return {
          "type" : "error",
          "message" : "Kullanıcı bulunamadı"
        };
      } else if (e.code == 'wrong-password') {
        return {
          "type" : "error",
          "message" : "Hatalı eposta veya şifre"
        };
      }
    }
  }

  Future register(emailAddress, password, displayName) async {
    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      await UserService().createUser(credential.user,displayName);

      return {
        "type" : "success",
        "message" : "Kayıt İşlemi Başarılı"
      };
    }
    on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return {
          "type" : "error",
          "message" : "Sağlanan şifre çok zayıf"
        };
      } else if (e.code == 'email-already-in-use') {
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

  Future logout() async {
    await firebaseAuth.signOut();
  }
}