import 'package:flutter/material.dart';
import 'package:new_application/components.dart';
import 'package:new_application/main1.dart';
import 'package:new_application/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                "assets/images/f.jpg",
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 20,
              ),
              buildtextformfield(Icon(Icons.person), 'user name'),
              SizedBox(
                height: 12,
              ),
              buildtextformfield(Icon(Icons.password), "password"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                      Text("Rmember me")
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'forget passoword',
                        style: TextStyle(),
                      ))
                ],
              ),
              SizedBox(
                height: 100,
              ),
              buildbutton(context, Main1(), "Log in", 130, 130, 12, 12),
              SizedBox(
                height: 12,
              ),
              Text(
                'or login with',
                style: TextStyle(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 102, 77, 68),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                    size: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.email,
                    size: 30,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.whatshot,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have accont ? ',
                    style:
                        TextStyle(color: const Color.fromARGB(255, 98, 60, 59)),
                  ),
                  TextButton(
                      onPressed: () {
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signup()),
                          );
                        }
                        ;
                      },
                      child: Text('Sign up'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
