import 'package:flutter/material.dart';
import 'package:new_application/components.dart';
import 'package:new_application/continue.dart';

class Ckeckout extends StatelessWidget {
  const Ckeckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Poyment Method",
              style: TextStyle(
                  fontSize: 20, color: const Color.fromARGB(255, 102, 77, 68)),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              padding: EdgeInsets.all(8),
              height: MediaQuery.of(context).size.height / 8,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 230, 230, 221)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shipping Address whaloo to match to wha are you hallow to go ",
                    style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 102, 77, 68)),
                  ),
                  Text(
                    "12309990007& ",
                    style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 102, 77, 68)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Shipping Address",
              style: TextStyle(
                  fontSize: 18, color: const Color.fromARGB(255, 102, 77, 68)),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              padding: EdgeInsets.all(12),
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 230, 230, 221)),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: const Color.fromARGB(255, 102, 77, 68),
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("cothma"),
                      Text("vidio"),
                      Text("formy"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              padding: EdgeInsets.only(top: 12, bottom: 12, left: 26),
              height: MediaQuery.of(context).size.height / 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sub table",
                        style: TextStyle(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 102, 77, 68)),
                      ),
                      Text(
                        "dtail",
                        style: TextStyle(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 102, 77, 68)),
                      ),
                      Text(
                        "totail:",
                        style: TextStyle(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 102, 77, 68)),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "1200p",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        "2000p",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        "30000p:",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                child: buildbutton(
                    context, ContaineScreen(), "Confirme", 90, 90, 12, 12))
          ],
        ),
      ),
    );
  }
}
