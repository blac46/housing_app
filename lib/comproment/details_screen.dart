import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:housing_app/comproment/payment_screen.dart';
import 'package:housing_app/comproment/wrap.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.grey[300],
        title: const Text(
          "Appartment Details",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, 
          mainAxisAlignment : MainAxisAlignment.start,
        children: [
          Container(
            height: 240,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                        image: NetworkImage("https://images.unsplash.com/photo-1570129477492-45c003edd2be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aG91c2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                        fit: BoxFit.fill),
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 9,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: houses.length,
              itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Container(
                    height: 70,
                    width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(houses[index]
                        ),
                        fit:BoxFit.fill
                      ),
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[300]),
                  )),
            ),
          ),
         const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hexpa Appartment",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                const SizedBox(
                    height: 10,
                  ),
                  Text("1800/month"),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.blueAccent,
                      ),
                      Text("Los Angels UK"),
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                      ),
                      Text("x2")
                    ],
                  )
                ],
              ),
              Container(
                height: 70,
                width: 90,
                decoration : BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image :DecorationImage(
                    image : NetworkImage("https://media.istockphoto.com/photos/washington-picture-id471841732?b=1&k=20&m=471841732&s=170667a&w=0&h=jM3vRQrJZU8x3ivuF64izfjSWzQGWFuc1vYTEP8_3so="),
                    fit : BoxFit.fill
                  )
                )
                
              )
            ],
          ),
          WrapWidget(),
        const SizedBox(
            height: 9,
          ),
         const Text(
            "Details:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Wrap(
            children: [
              Text("hhjjkkkkkkkkkkkkkkaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
            ],
          ),
          SizedBox(height: 40,),
            Material(
                color: const Color(0xff01957D),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentScreen(),
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
        ]),
      ),
    );
  }
}























List houses = [
  "https://images.unsplash.com/photo-1554995207-c18c203602cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG91c2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
  "https://media.istockphoto.com/photos/modern-living-room-interior-3d-render-picture-id1293762741?b=1&k=20&m=1293762741&s=170667a&w=0&h=2RI8SmBN4MrEZuTvdwRzaeB887x-dukFcQBpyQ-qwS4=",
  "https://images.unsplash.com/photo-1484154218962-a197022b5858?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGhvdXNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aG91c2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1568605114967-8130f3a36994?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aG91c2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1564013799919-ab600027ffc6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aG91c2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
];