import 'package:crack/homepage.dart';
import 'package:crack/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("CRACK")),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/login_image.png",
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
            ),
            Center(
              child: SingleChildScrollView(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Form(
                              child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "ENTER USERNAME",
                                    hintText: "USERNAME"),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "ENTER PASSWORD",
                                    hintText: "PASSWORD"),
                                obscureText: true,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextButton(
                          onPressed: (() {
                            Constants.prefs?.setBool("loggedIn", true);
                            Navigator.pushReplacementNamed(context, "/home");
                          }),
                          child: Text("SIGNIN"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
