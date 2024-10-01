import 'package:flutter/material.dart';
import 'package:new_application/components.dart';
import 'package:new_application/constant.dart';

class HomeSCreen extends StatelessWidget {
  const HomeSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 8,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return buildstore(image[index], text[index]);
                  },
                ),
              ),
              SizedBox(
                height: 12,
              ),
              ListView.separated(
                shrinkWrap: true,
                itemCount: 10,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 18,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return buildhome(context, image[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildstore(image, text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          radius: 38,
          backgroundColor: const Color.fromARGB(255, 21, 78, 175),
          child: CircleAvatar(
            radius: 35,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                image,
              ),
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
