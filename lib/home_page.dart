import 'package:flutter/material.dart';
import 'package:travel_ui/widget/travel_info.dart';
import 'package:travel_ui/widget/travel_info_small.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(elevation: 0, backgroundColor: Colors.white, actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        )
      ]),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Travel Blog',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.normal),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 2,
          child: TravelInfo(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Most Popular',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'View All',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(flex: 1, child: TravelInfoSmall()),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            height: 4,
            width: 100,
            color: Colors.black54,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ]),
    );
  }
}
