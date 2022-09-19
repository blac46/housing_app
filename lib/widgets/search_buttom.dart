import 'package:flutter/material.dart';

Container search(
      BuildContext context, OutlineInputBorder outlineInputBorder) {
    return Container(
      height: 170,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.grey[300],
           borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0)
           )),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 10),
                    border: outlineInputBorder,
                    focusedBorder: outlineInputBorder,
                    hintText: "Search for brand",
                    suffixIcon: Icon(
                      Icons.keyboard_hide,
                      color: Color(0xff01957D),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.account_balance,
                          color: Color(0xff01957D),
                          size: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Flat")
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.business_sharp,
                          color: Color(0xff01957D),
                          size: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("House")
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.home,
                          color: Color(0xff01957D),
                          size: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Flat")
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.nfc,
                          color: Color(0xff01957D),
                          size: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Nfc")
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

