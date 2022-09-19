import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'details_screen.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff01957D),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index)
               => Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 150,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
            GestureDetector(
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                     color: Colors.grey[300]
                    ),
                  ),
              ),
              onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailScreen(
                      )
                      ));
              },
            ),
            const SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const [
                    Text(
                      "Heta Appartment",style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Los blanco ESP"),
                    Text("Price:20,000"),
                    Text(
                      "Rating"
                    )
                  ],
              ),
            ),
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(Icons.favorite_border_outlined),
                    Material(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: const Color(0xff01957D),
                        child: const Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
              ),
            )
                    ],
                  ),
                    ),
               )),
          )
        ],
      ),
    );
  }
}
