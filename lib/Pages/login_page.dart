import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:housing_app/Pages/bottom_nav.dart';

final auth = FirebaseAuth.instance;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailControllar = TextEditingController();
  TextEditingController _passwordControllar = TextEditingController();
  bool isloading = false;
   bool isPasswordType=true;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("images/Login.png"),
              const SizedBox(
                height: 15,
              ),
              const Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Color(0xff01957D),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _emailControllar,
                decoration: InputDecoration(hintText: "Email"),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _passwordControllar,
                obscureText: isPasswordType,
                enableSuggestions: isPasswordType,
                autocorrect: isPasswordType,
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                ),
                keyboardType: isPasswordType
                    ? TextInputType.visiblePassword
                    : TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Forgot Password?"),
              const SizedBox(
                height: 20,
              ),
              Material(
                color: const Color(0xff01957D),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: TextButton(
                  onPressed: () async {
                    FirebaseAuth.instance.createUserWithEmailAndPassword
                    (email: _emailControllar.text, 
                    password: _passwordControllar.text).then((value) {
                      print("Sign");
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNav(),
                          ),
                        ).onError((error, stackTrace) {
                          print("error${error.toString()}");
                        });
                    });
                    
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                  child: Text(
                "Or",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 20,
              ),
              Material(
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color(0xff01957D)),
                    borderRadius: BorderRadius.circular(15.0)),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Login with Google",
                    style: TextStyle(
                        color: const Color(0xff01957D),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Center(
                child: RichText(
                  text: const TextSpan(
                      text: "New to this app?",
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                            text: "Register",
                            style: TextStyle(color: Colors.black))
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
