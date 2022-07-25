import 'package:flutter/material.dart';

import '../model/travel.dart';

class TravelInfoSmall extends StatefulWidget {
  TravelInfoSmall({Key? key}) : super(key: key);
  // ignore: non_constant_identifier_names
  final travel_list = Travel.mostpoluparTravelList();

  @override
  State<TravelInfoSmall> createState() => _TravelInfoSmallState();
}

class _TravelInfoSmallState extends State<TravelInfoSmall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: widget.travel_list.length,
          itemBuilder: (context, index) {
            var travel = widget.travel_list[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 150,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        travel.img,
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            travel.name,
                            style: TextStyle(
                                fontSize: 15,
                                color: travel.col,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            travel.address,
                            style: TextStyle(
                                fontSize: 10,
                                color: travel.col,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
