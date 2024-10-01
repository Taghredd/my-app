import 'package:flutter/material.dart';
import 'package:new_application/components.dart';

class ContaineScreen extends StatelessWidget {
  const ContaineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Icon(
                Icons.assignment_turned_in,
                size: 250,
                color: Colors.green,
              ),
              Text(
                "Thane You",
                style: TextStyle(fontSize: 30),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 75, right: 55),
                child: Text(
                  "Shipping Address whaloo to match to wha are you hallow to goShipping Address whaloo to match to  ",
                  style: TextStyle(
                      fontSize: 18,
                      color: const Color.fromARGB(255, 102, 77, 68)),
                ),
              ),
              SizedBox(
                height: 190,
              ),
              buildbutton(
                  context, ContaineScreen(), "Confirme", 90, 90, 12, 12),
              SizedBox(
                height: 38,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
