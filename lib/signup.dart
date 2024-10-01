import 'package:flutter/material.dart';
import 'package:new_application/components.dart';
import 'package:new_application/main1.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 75,
              ),
              Center(
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 45,
                    color: const Color.fromARGB(255, 102, 77, 68),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              buildtextformfield(Icon(Icons.person), "user name"),
              SizedBox(
                height: 12,
              ),
              buildtextformfield(Icon(Icons.email), "Email"),
              SizedBox(
                height: 12,
              ),
              buildtextformfield(Icon(Icons.password), "password"),
              SizedBox(
                height: 12,
              ),
              buildtextformfield(Icon(Icons.password), "confirm password"),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 15,
                    height: MediaQuery.of(context).size.height / 30,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              color: const Color.fromARGB(255, 102, 77, 68),
                            ),
                            top: BorderSide(
                              color: const Color.fromARGB(255, 102, 77, 68),
                            ),
                            left: BorderSide(
                              color: const Color.fromARGB(255, 102, 77, 68),
                            ),
                            right: BorderSide(
                              color: const Color.fromARGB(255, 102, 77, 68),
                            )),
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'I gree to the term &condtion',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 102, 77, 68),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 120,
              ),
              buildbutton(context, Main1(), "Sign up", 130, 130, 12, 12),
              SizedBox(
                height: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
