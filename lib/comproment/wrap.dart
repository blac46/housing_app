import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({
    Key? key,
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
        direction: Axis.horizontal,
        spacing: 10.0,
        runSpacing: 10.0,
        children: [
          {
            "apartmentType":"2 Bedrooms",

            "apartmentIcon":Icons.real_estate_agent_outlined,
           
          },

           {
            "apartmentType":"3 Bedrooms",

            "apartmentIcon":Icons.recent_actors_outlined
           
          },
           {
            "apartmentType":"2000 slip",

            "apartmentIcon":Icons.sailing
           
          },
           {
            "apartmentType":"funiture",

            "apartmentIcon":Icons.chair_alt
           
          },
           {
            "apartmentType":"Air Condition",

            "apartmentIcon":Icons.air_sharp
           
          },
           {
            "apartmentType":"Power Backup",

            "apartmentIcon":Icons.battery_0_bar_outlined
           
          },
          
        ]
            .map((Map<dynamic, dynamic> name) => Chip(
              backgroundColor: Color.fromARGB(255, 169, 222, 201),
                  avatar: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 169, 222, 201),
                    child: Icon(name["apartmentIcon"],color: Color.fromARGB(255, 44, 106, 81),)),
                  label: Text(name['apartmentType'].toString()),
                ))
            .toList());
  }
}
