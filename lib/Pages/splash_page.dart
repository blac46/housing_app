import 'dart:async';

import 'package:flutter/material.dart';
import 'package:housing_app/Pages/find_home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    // wait for 3 second beforing to the screen

    Timer(Duration(seconds: 2), ()=> Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>FindHomePage()),
    ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle housetitleStyle =Theme.of(context). textTheme.bodyText1!.copyWith(fontSize: 30);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 70,
            ),
            RichText(text:
            TextSpan(text: 'Blac',style: housetitleStyle,
              children: [
                TextSpan(
                  text: 'Housing',style: housetitleStyle.copyWith(color: Colors.green)
                )
              ]
            ),

            )
          ],
        ),
      ),
    );
  }
}
