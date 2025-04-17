import 'package:flutter/material.dart';
import 'package:state_class/state_mnag.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordConroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 114, 111, 111),
      appBar: AppBar(
        leading: Icon(
          Icons.login,
          size: 40,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 71, 73, 76),
        title: Text(
          'Login Screen',
          style: TextStyle(
              color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(children: [
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 88, vertical: 30),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: emailController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: "Enter Email:",
                  hintStyle:
                      TextStyle(color: const Color.fromARGB(255, 21, 21, 21)),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 88, vertical: 30),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwordController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  hintText: "Enter Password:",
                  hintStyle:
                      TextStyle(color: const Color.fromARGB(255, 18, 17, 17)),
                ),
              ),
            ),
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            Text(
              'Login',
            );
          },
          child: Text('Login'),
        )
      ]),
    );
  }
}
