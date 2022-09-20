import 'package:flutter/material.dart';

import 'get_started_page.dart';

class PropertyNearArea extends StatelessWidget {
  const PropertyNearArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle housetitleStyle =
        Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 30);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset("images/nearby.png"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Property In Nearby Area",
              style: housetitleStyle.copyWith(
                  color: Color(0xff01957D), fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: const [
                  Text(
                    "Find the affordable housing project in country and in every location need in the country .Very heavry protected housing, Is very to location near you which will limit your transportation ,To improve your savings ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GetStartedPage(UserId: '',),
                        ),
                      );
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
                            builder: (context) => GetStartedPage(UserId: '',),
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
