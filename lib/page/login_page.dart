import 'package:flutter/material.dart';
import 'package:spotify_clone/page/home_page.dart';
import 'package:spotify_clone/page/register_page.dart';
import 'package:spotify_clone/service/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  bool isSwitched = false;
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  AuthService _authService=AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: Container(
          height: 850,
          width: 500,
          color: Colors.black54.withOpacity(0.9),
          child: ListView(
            children: [
              Column(
                children: [
                  Image.network(
                    "https://storage.googleapis.com/pr-newsroom-wp/1/2018/11/Spotify_Logo_RGB_White.png",
                    height: 100,
                    width: 150,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Music for everyone",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 25, 15, 17),
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
                            hintText: "Email or username".padLeft(19),
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
                  Container(
                    height: 40,
                    width: 250,
                    color: Colors.white30.withOpacity(0.1),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        validator: (value) {;
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Password".padLeft(10),
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
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 70, top: 8, bottom: 80),
                    child: Row(
                      children: [
                        Text(
                          "Remember Me",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white30.withOpacity(.5),
                              fontSize: 14),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 110),
                          child: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                print(isSwitched);
                              });
                            },
                            activeTrackColor: Colors.green,
                            activeColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SizedBox(
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {
                          _authService.signIn(_emailController.text, _passwordController.text).then((value) {
                            return   Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                          });

                        },
                        style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll<Color>(
                                  Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )),
                        ),
                        child: const Text(
                          "LOG IN",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: Row(children: const <Widget>[
                      Expanded(
                          child: Divider(
                        color: Colors.white70,
                      )),
                      Text(
                        "        OR        ",
                        style: TextStyle(color: Colors.white70),
                      ),
                      Expanded(
                          child: Divider(
                        color: Colors.white70,
                      )),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll<Color>(
                                  Color(0xFF4267B2)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0))),
                          side: const MaterialStatePropertyAll<BorderSide>(
                              BorderSide(color: Colors.white)),
                        ),
                        child: const Text(
                          "LOG IN WITH FACEBOOK",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,bottom: 100),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 75),
                          child: Text(
                            "DON'T HAVE AN ACCOUNT?  ",
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                        ),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
                        },child: const Text("SIGNUP",style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white)),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Row(
                      children: [
                        TextButton(onPressed: (){},child: const Text("RESET PASSWORD",style: TextStyle(
                          color: Colors.white70,
                        ),),),
                        TextButton(onPressed: (){},child: const Text("SETTINGS",style: TextStyle(
                          color: Colors.white70
                        ),),)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
