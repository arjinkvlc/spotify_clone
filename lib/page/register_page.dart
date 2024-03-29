import 'package:flutter/material.dart';
import 'package:spotify_clone/page/home_page.dart';
import 'package:spotify_clone/page/login_page.dart';
import 'package:spotify_clone/service/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
late String username;
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usersRef = FirebaseFirestore.instance;
  final AuthService _authService = AuthService();
  late GlobalKey<FormState> formKey;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  late String email;
  late String password;

  void _addUser() {
    _usersRef.collection("users").add({
      'email': email,
      'password': password,
      'username': username,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1DB954).withOpacity(0.9),
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          height: 750,
          width: 400,
          color: Colors.black54.withOpacity(0.9),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                const Text(
                  "REGISTER",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 45, 15, 17),
                  child: Container(
                    height: 40,
                    width: 250,
                    color: Colors.white30.withOpacity(0.1),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: TextFormField(
                        controller: _usernameController,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        validator: (value) {
                          return 'Please enter some text';
                        },
                        decoration: InputDecoration(
                          hintText: "Username".padLeft(10),
                          hintStyle: const TextStyle(
                              color: Colors.white30,
                              fontWeight: FontWeight.bold),
                          suffixIcon: const Icon(
                            Icons.person,
                            color: Colors.white30,
                          ),
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 17),
                  child: Container(
                    height: 40,
                    width: 250,
                    color: Colors.white30.withOpacity(0.1),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: TextFormField(
                        controller: _emailController,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        validator: (value) {
                          return 'Please enter some text';
                        },
                        decoration: InputDecoration(
                          hintText: "Email".padLeft(7),
                          hintStyle: const TextStyle(
                              color: Colors.white30,
                              fontWeight: FontWeight.bold),
                          suffixIcon: const Icon(
                            Icons.mail_outline_sharp,
                            color: Colors.white30,
                          ),
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 150),
                  child: Container(
                    height: 40,
                    width: 250,
                    color: Colors.white30.withOpacity(0.1),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 9),
                      child: TextFormField(
                        obscureText: true,
                        controller: _passwordController,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        validator: (value) {
                          return 'Please enter some text';
                        },
                        decoration: InputDecoration(
                          hintText: "Password".padLeft(9),
                          hintStyle: const TextStyle(
                              color: Colors.white30,
                              fontWeight: FontWeight.bold),
                          suffixIcon: const Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.white30,
                          ),
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: TextButton(
                      onPressed: () {
                        username = _usernameController.text;
                        email = _emailController.text;
                        password = _passwordController.text;
                        _addUser();
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Registered Successfully"),
                        ));
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                      },
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Color(0xFF1DB954)),
                        foregroundColor:
                            MaterialStatePropertyAll<Color>(Colors.black),
                      ),
                      child: const Text("SIGN UP")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
