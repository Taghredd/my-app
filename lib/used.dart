import 'package:flutter/material.dart';
import 'package:new_application/components.dart';
import 'package:new_application/constant.dart';

class Usedscreen extends StatelessWidget {
  const Usedscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          "Used Furniture",
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2,
              crossAxisSpacing: 18,
              mainAxisSpacing: 18),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return buildgrid(context, image[index]);
          },
        ),
      ),
    );
  }
}
