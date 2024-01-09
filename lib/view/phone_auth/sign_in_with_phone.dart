import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class singInWithPhone extends StatefulWidget {
  const singInWithPhone({super.key});

  @override
  State<singInWithPhone> createState() => _singInWithPhoneState();
}

class _singInWithPhoneState extends State<singInWithPhone> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign In with Phone"),
      ),
      body: SafeArea(
        child: ListView(
          children: [

            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  
                  TextField(
                    
                    decoration: InputDecoration(
                      labelText: "Phone Number"
                    ),
                  ),

                  SizedBox(height: 20,),

                  CupertinoButton(
                    onPressed: () {
                     
                    },
                    color: Colors.blue,
                    child: Text("Sign In"),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}