import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:housing_app/Pages/bottom_nav.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("images/SingIn.png"),
             const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Color(0xff01957D),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const TextField(
                decoration: InputDecoration(hintText: "Email"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const TextField(
                decoration: InputDecoration(hintText: "Full Name"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye_rounded)),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: const TextSpan(
                    text: "By signing up you have agreed to",
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                          text: "Terms&Condition and Privacy Policy",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey))
                    ],),
              ),
              SizedBox(height: 30,),
                Material(
                color:const Color(0xff01957D),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNav(),
                          ),
                        );
                  },
                  child: const Text(
                    "Contiune",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
                Center(
                  child: RichText(
                  text: const TextSpan(
                      text: "Joined us Before?",
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                            text: "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey))
                      ],),
              ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
