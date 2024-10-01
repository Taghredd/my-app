import 'package:flutter/material.dart';
import 'package:new_application/constant.dart';
import 'package:new_application/hotoffer.dart';

class Main1 extends StatefulWidget {
  const Main1({super.key});

  @override
  State<Main1> createState() => _Main1State();
}

class _Main1State extends State<Main1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () => (),
              icon: const Icon(
                Icons.search,
                size: 25,
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            child: Image.asset(
              "assets/images/q2.jpg",
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: const Row(
              children: [
                Text(
                  "Poupular Gatogares",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 102, 77, 68),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.bed,
                    size: 34,
                    color: Color.fromARGB(255, 102, 77, 68),
                  ),
                  Icon(
                    Icons.wordpress,
                    size: 34,
                    color: Color.fromARGB(255, 102, 77, 68),
                  ),
                  Icon(
                    Icons.tv,
                    size: 34,
                    color: Color.fromARGB(255, 102, 77, 68),
                  ),
                  Icon(
                    Icons.laptop_mac,
                    size: 34,
                    color: Color.fromARGB(255, 102, 77, 68),
                  ),
                  Icon(
                    Icons.subtitles_off,
                    size: 34,
                    color: Color.fromARGB(255, 102, 77, 68),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "   sofa   ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 102, 77, 68),
                    ),
                  ),
                  Text(
                    "bedroom",
                    style: TextStyle(
                      color: Color.fromARGB(255, 102, 77, 68),
                    ),
                  ),
                  Text(
                    "bedroom",
                    style: TextStyle(
                      color: Color.fromARGB(255, 102, 77, 68),
                    ),
                  ),
                  Text(
                    "   Tvs    ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 102, 77, 68),
                    ),
                  ),
                  Text(
                    "bedroom",
                    style: TextStyle(
                      color: Color.fromARGB(255, 102, 77, 68),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Hot offeser",
              style: TextStyle(
                  color: Color.fromARGB(255, 102, 77, 68), fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 3.8,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 18,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return buildhome(context, image[index]);
                },
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "New arrivals",
              style: TextStyle(
                  color: Color.fromARGB(255, 138, 2, 2), fontSize: 18),
            ),
          ),
        ]),
      ),
    );
  }

  Widget buildstore(image, text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(
            image,
          ),
        ),
        Text(text,
            style: const TextStyle(
              color: Color.fromARGB(255, 102, 77, 68),
            )),
      ],
    );
  }

  Widget buildhome(BuildContext context, image) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: MediaQuery.of(context).size.height / 4.5,
      width: MediaQuery.of(context).size.width / 2.6,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 240, 235, 235),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Image.asset(
              image,
              height: MediaQuery.of(context).size.height / 5.8,
              width: MediaQuery.of(context).size.width / 2.6,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Corna sofa",
                  style: TextStyle(
                      color: Color.fromARGB(255, 102, 77, 68), fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "1200 EGP",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        const Text(
                          "1200500EGP",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Color.fromARGB(255, 102, 77, 68),
                              fontSize: 12),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HotOffer()),
                          );
                        },
                        icon: const Icon(
                          Icons.drive_file_move_rounded,
                          size: 24,
                          color: Color.fromARGB(255, 102, 77, 68),
                        ))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
