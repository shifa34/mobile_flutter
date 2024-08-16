import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:myshopshifa/list_user.dart';
import 'package:http/http.dart' as http;

class InsertNewUser extends StatefulWidget {
  const InsertNewUser({super.key});

  @override
  State<InsertNewUser> createState() => _InsertNewUserState();
}

class _InsertNewUserState extends State<InsertNewUser> {
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _email = TextEditingController();
  final _address = TextEditingController();

  void clearText() {
    _username.clear();
    _password.clear();
    _email.clear();
    _address.clear();
  }

  Future<void> addNewUser() async {
    String urlInsertUser = "https://arshifa.000webhostapp.com/insertuser.php";
    try {
      var responseInsert = await http.post(Uri.parse(urlInsertUser), body: {
        "username": _username.text.toString(),
        "password": _password.text.toString(),
        "email": _email.text.toString(),
        "address": _address.text.toString(),
      });
      var insertNewUser = json.decode(responseInsert.body);
      if (insertNewUser == "true") {
        print("Data User baru berhasil ditambahkan");
      } else {
        print("Data User baru gagal ditambahkan");
      }
    } catch (exc) {
      print(exc);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add New User",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: <Widget>[
            // const Padding(
            //   padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
            //   child: Text("Add User",
            //       style: TextStyle(
            //           color: Colors.green,
            //           fontWeight: FontWeight.bold,
            //           fontSize: 22)),
            // ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _username,
                decoration: const InputDecoration(
                  labelText: "Username",
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  hintText: "enter username",
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.people_rounded,
                      color: Colors.green,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.green),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _password,
                decoration: const InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  hintText: "enter password",
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.password_outlined,
                      color: Colors.green,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.green),
                  ),
                ),
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _email,
                decoration: const InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  hintText: "enter email",
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.email_rounded,
                      color: Colors.green,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.green),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _address,
                decoration: const InputDecoration(
                  labelText: "Address",
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  hintText: "enter address",
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.home_filled,
                      color: Colors.green,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.green),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 160,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  addNewUser();
                  clearText();
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const ListAllUser()));
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const ListAllUser()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                ),
                child: const Text(
                  "Add User",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}