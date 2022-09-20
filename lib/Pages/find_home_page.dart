import 'package:flutter/material.dart';
import 'package:housing_app/Pages/get_started_page.dart';
import 'package:housing_app/Pages/property_near_area.dart';

class FindHomePage extends StatelessWidget {
  const FindHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle housetitleStyle =
        Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 30);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Image.asset("images/looking.png"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Find Home For Rent",
              style: housetitleStyle.copyWith(
                  color: Color(0xff01957D), fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: [
                  Text(
                    "Find the affordable housing project in country and in every location need in the country .Very heavry protected housing",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GetStartedPage(UserId: '',),),);
                    },
                    child: Text(
                      "SKIP",
                      style: housetitleStyle.copyWith(
                          color: Colors.grey, fontSize: 15),
                    )),
                CircleAvatar(
                  backgroundColor: Color(0xff01957D),
                  radius: 35,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PropertyNearArea(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
