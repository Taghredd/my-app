import 'package:flutter/material.dart';
import 'package:new_application/hotoffer.dart';

TextButton buildbutton(BuildContext context, Widget ontap, String text,
    double n, double m, double a, double b) {
  return TextButton(
      style: ButtonStyle(
          shape: const WidgetStatePropertyAll(BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)))),
          padding: WidgetStatePropertyAll(
            EdgeInsets.only(left: n, right: m, top: a, bottom: b),
          ),
          backgroundColor:
              const WidgetStatePropertyAll(Color.fromARGB(255, 102, 77, 68))),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ontap));
      },
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ));
}

TextFormField buildtextformfield(Widget icons, String text) {
  return TextFormField(
    decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
        prefixIcon: icons,
        hintText: text,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 102, 77, 68),
        ),
        filled: true,
        fillColor: Colors.grey[60],
        border: OutlineInputBorder(
            borderSide: const BorderSide(
                // color: const Color.fromARGB(255, 231, 10, 10),
                ),
            borderRadius: BorderRadius.circular(12))),
  );
}

Widget buildhome(BuildContext context, image) {
  return Container(
    clipBehavior: Clip.antiAlias,
    height: MediaQuery.of(context).size.height / 2.6,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: const Color.fromARGB(255, 27, 26, 26),
        borderRadius: BorderRadius.circular(20)),
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          height: MediaQuery.of(context).size.height / 3.9,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "VInTAGIO STYuDUi inter\n studio design websit",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(
                      image,
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  const Text(
                    "Taghred joha",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget buildgrid(BuildContext context, image) {
  return Container(
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
        color: const Color.fromARGB(255, 235, 231, 231),
        borderRadius: BorderRadius.circular(12)),
    child: LayoutBuilder(builder: (context, boxConstraints) {
      return Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: boxConstraints.maxHeight / 2,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "Bed Room",
                    style: TextStyle(
                        color: Color.fromARGB(255, 102, 77, 68), fontSize: 15),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Taghred joha",
                      style: TextStyle(
                          color: Color.fromARGB(255, 102, 77, 68),
                          fontSize: 15),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HotOffer()),
                          );
                        },
                        child: const Icon(
                          Icons.drive_file_move_rounded,
                          size: 25,
                          color: Color.fromARGB(255, 102, 77, 68),
                        )),
                  ],
                )
              ],
            ),
          )
        ],
      );
    }),
  );
}
