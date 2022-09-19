import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:housing_app/Pages/bottom_nav.dart';

class ThnakYouScreen extends StatelessWidget {
  const ThnakYouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 70,),
            Image.asset("images/Verified.png"),
            Center(child: Text("Thank you for reaching Us!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
            SizedBox(height: 20,),

            Center(child: Text("We will get back to you in 10 Mintues...")),
             SizedBox(height: 80,),
            Material(
                color: const Color(0xff01957D),
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
                    "Return to Home",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              )
          ],
        ),
      ),
    );
    
  }
}