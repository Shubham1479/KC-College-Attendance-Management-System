import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signUpPage extends StatefulWidget {
  const signUpPage({super.key});

  @override
  State<signUpPage> createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Create an account"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(labelText: "Email Address"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    decoration: InputDecoration(labelText: "Password"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    decoration: InputDecoration(labelText: "Confirm Password"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    color: Colors.blue,
                    child: Text("Create Account"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
