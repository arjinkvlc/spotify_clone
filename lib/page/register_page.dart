import 'package:flutter/material.dart';
import 'package:spotify_clone/service/auth.dart';
import 'package:spotify_clone/service/status_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'login_page.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late GlobalKey<FormState> formKey;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  late String username;
  late String email;
  late String password;

  void _addUser(){
    CollectionReference usersRef= FirebaseFirestore.instance.collection("users");
    usersRef.add({
      'email': email,
      'password': password,
      'username': username,
    })
    ;
  }
  Future<void> register(context) async {
    if (formKey.currentState!.validate()) {
      var response = await AuthService().register(_emailController.text, _passwordController.text, _usernameController.text);
      if (response["type"] == "success") {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(response["message"]),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const LoginPage())
        );
      }
      else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(response["message"]),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }


  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black54.withOpacity(.7),
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
                  child: ElevatedButton(
                      onPressed: () async{
                        _authService.register(_emailController.text, _passwordController.text,_usernameController.text);
                        username=_usernameController.text;
                        email=_emailController.text;
                        password=_passwordController.text;
                        _addUser();
                        register(context);
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Registered Successfully"),
                        ));
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
