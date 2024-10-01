import 'package:flutter/material.dart';
import 'package:new_application/components.dart';
import 'package:new_application/main1.dart';

class Customizedscreen extends StatefulWidget {
  const Customizedscreen({super.key});

  @override
  State<Customizedscreen> createState() => _CustomizedscreenState();
}

class _CustomizedscreenState extends State<Customizedscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 253, 253),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
          "Customized furniture",
          style: TextStyle(
            color: Color.fromARGB(255, 90, 89, 88),
          ),
        )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              padding: const EdgeInsets.all(12),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Furniture type",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              )),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.bed,
                size: 34,
                color: const Color.fromARGB(255, 102, 77, 68),
              ),
              Icon(
                Icons.wordpress,
                size: 34,
                color: const Color.fromARGB(255, 102, 77, 68),
              ),
              Icon(
                Icons.tv,
                size: 34,
                color: const Color.fromARGB(255, 102, 77, 68),
              ),
              Icon(
                Icons.laptop_mac,
                size: 34,
                color: const Color.fromARGB(255, 102, 77, 68),
              ),
              Icon(
                Icons.subtitles_off,
                size: 34,
                color: const Color.fromARGB(255, 102, 77, 68),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "   sofa   ",
                style: TextStyle(
                  color: const Color.fromARGB(255, 102, 77, 68),
                ),
              ),
              Text(
                "bedroom",
                style: TextStyle(
                  color: const Color.fromARGB(255, 102, 77, 68),
                ),
              ),
              Text(
                "bedroom",
                style: TextStyle(
                  color: const Color.fromARGB(255, 102, 77, 68),
                ),
              ),
              Text(
                "   Tvs    ",
                style: TextStyle(
                  color: const Color.fromARGB(255, 102, 77, 68),
                ),
              ),
              Text(
                "bedroom",
                style: TextStyle(
                  color: const Color.fromARGB(255, 102, 77, 68),
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 2,
              ),
              CircleAvatar(
                radius: 8,
                backgroundColor: const Color.fromARGB(255, 250, 240, 240),
              ),
              SizedBox(
                width: 2,
              ),
              CircleAvatar(
                radius: 8,
                backgroundColor: const Color.fromARGB(255, 250, 240, 240),
              ),
              SizedBox(
                width: 2,
              ),
              CircleAvatar(
                radius: 8,
                backgroundColor: const Color.fromARGB(255, 250, 240, 240),
              ),
              SizedBox(
                width: 2,
              ),
              CircleAvatar(
                radius: 8,
                backgroundColor: const Color.fromARGB(255, 250, 240, 240),
              ),
              SizedBox(
                width: 2,
              ),
              CircleAvatar(
                radius: 8,
                backgroundColor: const Color.fromARGB(255, 250, 240, 240),
              ),
              SizedBox(
                width: 2,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Colours",
                  style: TextStyle(
                    fontSize: 24,
                    color: const Color.fromARGB(255, 102, 77, 68),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.black38,
              ),
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.black,
              ),
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.blueAccent,
              ),
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.redAccent,
              ),
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.blueAccent,
              ),
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.black,
              ),
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.amber,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Wood type",
                  style: TextStyle(
                    fontSize: 24,
                    color: const Color.fromARGB(255, 102, 77, 68),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Color.fromARGB(96, 167, 98, 98),
                child: Text(
                  "009945",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              CircleAvatar(
                child: Text(
                  "009945",
                  style: TextStyle(fontSize: 12),
                ),
                radius: 30,
                backgroundColor: Color.fromARGB(255, 199, 103, 103),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Color.fromARGB(255, 2, 35, 92),
                child: Text(
                  "009945",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              CircleAvatar(
                child: Text(
                  "009945",
                  style: TextStyle(fontSize: 12),
                ),
                radius: 30,
                backgroundColor: Colors.redAccent,
              ),
              CircleAvatar(
                child: Text(
                  "009945",
                  style: TextStyle(fontSize: 12),
                ),
                radius: 30,
                backgroundColor: Color.fromARGB(255, 197, 218, 10),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "range price :",
                  style: TextStyle(
                    fontSize: 24,
                    color: const Color.fromARGB(255, 102, 77, 68),
                  ),
                ),
              ],
            ),
          ),
          RangeSlider(
            values: RangeValues(10, 90),
            max: 100,
            min: 0,
            onChanged: (values) {
              setState(() {
                values = values;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("3000s"), Text("50000s")],
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "prefrered Dsign",
                  style: TextStyle(
                    fontSize: 24,
                    color: const Color.fromARGB(255, 102, 77, 68),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          buildbutton(context, Main1(), "update photo", 60, 60, 10, 10)
        ],
      ),
    );
  }
}
