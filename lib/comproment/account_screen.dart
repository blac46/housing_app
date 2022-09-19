import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Account",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
         const Center(
              child: CircleAvatar(
                backgroundColor: Color(0xff01957D),
            radius: 50,
          )),
         const SizedBox(
            height: 10,
          ),
         const Center(
              child: Text(
            "Blac Arabian",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          const SizedBox(height: 10,),
          const Center(
              child: Text(
            "ykelvin46@gmail.com",
            
          )),
          SizedBox(height: 30,),
          Expanded(
            child: Container(
              decoration:const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)
                )
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(.0),
                  child: Column(
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: "Edit your Profile",
                          suffixIcon: Icon(Icons.check_box,color: Color(0xff01957D),)
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.card_giftcard),
                          hintText: "Payment Method",
                          suffixIcon: Icon(Icons.check_box,color: Color(0xff01957D),)
                        ),
                      ),
                      SizedBox(height: 20,),
              
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.save),
                          hintText: "Saved",
                          suffixIcon: Icon(Icons.check_box,color: Color(0xff01957D),)
                        ),
                      ),
                     SizedBox(height: 20,),
              
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.control_point_duplicate_rounded),                        hintText: "Terms and Condition",
                          suffixIcon: Icon(Icons.check_box,color: Color(0xff01957D),)
                        ),
                      ),
                     SizedBox(height: 20,),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.star),
                          hintText: "Bookings",
                          suffixIcon: Icon(Icons.check_box,color: Color(0xff01957D),)
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.notifications),
                          hintText: "Notification Settings",
                          suffixIcon: Icon(Icons.check_box,color: Color(0xff01957D),)
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.settings),
                          hintText: "Account Settings",
                          suffixIcon: Icon(Icons.check_box,color: Color(0xff01957D),)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
