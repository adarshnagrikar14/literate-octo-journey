import 'dart:convert';

import 'package:dbms_mp/EventInfo/EventGridtoLogistics.dart';
import 'package:dbms_mp/EventInfo/EventGridtoOrganiser.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoginbyOrganiser extends StatefulWidget {
  const LoginbyOrganiser({Key? key}) : super(key: key);

  @override
  State<LoginbyOrganiser> createState() => _LoginbyOrganiserState();
}

class _LoginbyOrganiserState extends State<LoginbyOrganiser> {
  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

    var url = "http://localhost:8080/logistic/login";

    void postdata() async {
      var dio = Dio();
      var data = jsonEncode({
        "username": username.text.toString(),
        "password": password.text.toString(),
      });
      try {
        Response response = await dio.post(url, data: data);
        print(response.data);
        var detail = response.data as List;
        if (detail.isNotEmpty) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  EventGridtoLogistics(username.text.toString())));
        }
      } catch (error) {
        print(error);
      }
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 233, 222),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Text(
                    "EVENTO",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  TextField(
                    controller: username,
                    keyboardType: TextInputType.name,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.blueGrey, width: 3),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      labelText: "Username",
                      alignLabelWithHint: true,
                      labelStyle: const TextStyle(
                          fontSize: 24,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w600),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.blueGrey, width: 3),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  TextField(
                    controller: password,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.blueGrey, width: 3),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      labelText: "Password",
                      alignLabelWithHint: true,
                      labelStyle: const TextStyle(
                          fontSize: 24,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w600),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.blueGrey, width: 3),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  InkWell(
                    onTap: () => postdata(),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
