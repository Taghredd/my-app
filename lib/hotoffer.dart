import 'package:flutter/material.dart';
import 'package:new_application/cart.dart';
import 'package:new_application/components.dart';
import 'package:new_application/logo.dart';

class HotOffer extends StatelessWidget {
  const HotOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.6,
                child: Image.asset(
                  "assets/images/q2.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Text(
                          'Corner sofa ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 102, 77, 68),
                          ),
                        ),
                        Text(
                          '12000 EGP',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                              size: 28,
                            ),
                            Text(
                              '30 reviews',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: const Color.fromARGB(255, 102, 77, 68)),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.all(6),
                            child: const Text(
                              "10",
                              style: TextStyle(fontSize: 20),
                            )),
                        Stack(
                          alignment: const Alignment(0, -1),
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 24,
                              width: MediaQuery.of(context).size.width / 12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color:
                                      const Color.fromARGB(255, 102, 77, 68)),
                            ),
                            const Icon(
                              Icons.minimize_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "© 2024 Sofology Limited. All rights reserved. Registered office: Golborne Point, Ashton Road, Golborne, WA3 3UL. Company registration number: 01778734 Delivery estimates are subject to availability in the location of our customers",
                  style: TextStyle(
                      color: Color.fromARGB(255, 102, 77, 68), fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select Colors",
                      style: TextStyle(
                        color: Color.fromARGB(255, 102, 77, 68),
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.black38,
                        ),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.black,
                        ),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.blueAccent,
                        ),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.redAccent,
                        ),
                        SizedBox(
                          width: 230,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 35, bottom: 35, left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.favorite_outline,
                      size: 40,
                      color: Color.fromARGB(255, 102, 77, 68),
                    ),
                    SizedBox(
                        child: buildbutton(context, const Cartscreen(),
                            "Add To Cart", 80, 80, 12, 12)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
