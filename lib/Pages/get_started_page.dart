import 'package:flutter/material.dart';
import 'package:housing_app/Pages/login_page.dart';
import 'package:housing_app/Pages/signIn_page.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/find_house.png"),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Let's Get Started!",
                style: TextStyle(
                    color: Color(0xff01957D),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Wrap(
                children: const [
                  Text(
                    "Find the affordable housing project in country and in every location need in the country .Very heavry protected housing",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 95,
            ),
            Expanded(
              child: Material(
                  color: Color(0xff01957D),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))),
            ),
           const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Material(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xff01957D)),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInPage(),
                          ),
                        );
                      },
                      child: Text(
                        "SignIn",
                        style: TextStyle(
                            color: Color(0xff01957D),
                            fontWeight: FontWeight.bold),
                      ))),
            ),
            Container(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
