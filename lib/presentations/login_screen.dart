// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

final db = FirebaseFirestore.instance;

class LoginScreen extends StatelessWidget {
  static const String name = 'login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Logueate: ",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
            width: 600,
            child: TextField(
              controller: userController,
              decoration: const InputDecoration(
                  hintText: 'Usuario ', icon: Icon(Icons.person)),
            ),
          ),
          SizedBox(
            height: 100,
            width: 600,
            child: TextField(
              controller: passController,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: 'Contraseña', icon: Icon(Icons.key)),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                String inputName = userController.text;
                String inputPass = passController.text;

                if (inputName.isEmpty == false && inputPass.isEmpty == false){
                  final user = <String, dynamic>{
                      "name": inputName,
                      "pass": inputPass,
                    };
                    // Add a new document with a generated ID
                    db.collection("users").add(user).then(
                          (DocumentReference doc) => print(
                              'DocumentSnapshot added with ID: ${doc.id}'),
                        );
                }
              },
              child: const Text("Login")),
        ],
      ))),
    );
  }
}
