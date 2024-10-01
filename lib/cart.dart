import 'package:flutter/material.dart';
import 'package:new_application/ckeckout.dart';
import 'package:new_application/components.dart';
import 'package:new_application/hotoffer.dart';

class Cartscreen extends StatelessWidget {
  const Cartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "My Cart",
            style: TextStyle(
                color: const Color.fromARGB(255, 102, 77, 68), fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Image.asset(
                      "assets/images/q2.jpg",
                      height: MediaQuery.of(context).size.height / 7,
                      width: MediaQuery.of(context).size.width / 3.6,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // padding: EdgeInsets.all(2),
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Corner sofa",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(maxLines: 3, "2024 Sofology Limited."),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment(0, 0),
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 36,
                                  width: MediaQuery.of(context).size.width / 18,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: const Color.fromARGB(
                                          255, 102, 77, 68)),
                                ),
                                Icon(
                                  size: 12,
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            Container(
                                padding: EdgeInsets.all(6),
                                child: Text(
                                  "10",
                                  style: TextStyle(fontSize: 20),
                                )),
                            Stack(
                              alignment: Alignment(0, -1),
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 36,
                                  width: MediaQuery.of(context).size.width / 18,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: const Color.fromARGB(
                                          255, 102, 77, 68)),
                                ),
                                Icon(
                                  size: 14,
                                  Icons.minimize_outlined,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "12340000@",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 55,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter theprymo code",
                        suffixIcon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.redAccent,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color:
                                    const Color.fromARGB(255, 102, 77, 68)))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 12, bottom: 12),
                    height: MediaQuery.of(context).size.height / 7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sub ",
                              style: TextStyle(
                                  fontSize: 18,
                                  color:
                                      const Color.fromARGB(255, 102, 77, 68)),
                            ),
                            Text(
                              "dtail",
                              style: TextStyle(
                                  fontSize: 18,
                                  color:
                                      const Color.fromARGB(255, 102, 77, 68)),
                            ),
                            Text(
                              "totail:",
                              style: TextStyle(
                                  fontSize: 18,
                                  color:
                                      const Color.fromARGB(255, 102, 77, 68)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1200p",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            Text(
                              "2000p",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            Text(
                              "30000p:",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  buildbutton(context, Ckeckout(), "CheckOut", 100, 100, 12, 12)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
