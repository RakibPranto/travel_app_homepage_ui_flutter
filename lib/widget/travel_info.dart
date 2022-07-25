import 'package:flutter/material.dart';
import 'package:travel_ui/model/travel.dart';

class TravelInfo extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final travel_list = Travel.generatedTravelList();

  @override
  State<TravelInfo> createState() => _TravelInfoState();
}

class _TravelInfoState extends State<TravelInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: widget.travel_list.length,
          itemBuilder: (context, index) {
            var travel = widget.travel_list[index];
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, bottom: 35),
                  child: SizedBox(
                    height: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        travel.img,
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 60,
                  left: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        travel.address,
                        style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        travel.name,
                        style: TextStyle(
                          fontSize: 35,
                          color: travel.col,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 1.5,
                  right: 50,
                  child: InkWell(
                    onTap: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return Dialog(
                              clipBehavior: Clip.none,
                              backgroundColor: Colors.transparent,
                              child: Stack(clipBehavior: Clip.none, children: [
                                Container(
                                  height: 300,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Image.asset(
                                    travel.img,
                                    fit: BoxFit.fill,
                                    height: double.infinity,
                                    width: double.infinity,
                                  ),
                                ),
                                Positioned(
                                    right: 5,
                                    top: 5,
                                    child: IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        icon: const Icon(
                                          Icons.close,
                                          color: Colors.white,
                                        ))),
                              ]),
                            );
                          });
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: 30,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
