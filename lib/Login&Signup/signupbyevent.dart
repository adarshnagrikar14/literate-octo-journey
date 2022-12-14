import 'dart:convert';

import 'package:dbms_mp/EventInfo/EventGridtoOrganiser.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SignUpbyEvent extends StatefulWidget {
  const SignUpbyEvent({Key? key}) : super(key: key);

  @override
  State<SignUpbyEvent> createState() => _SignUpbyEventState();
}

class _SignUpbyEventState extends State<SignUpbyEvent> {
  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phoneno = TextEditingController();
    TextEditingController companyname = TextEditingController();

    var url = "http://localhost:8080/eventuser/register";
    void postuserdata() async {
      var dio = Dio();
      var body = jsonEncode({
        "username": username.text.toString(),
        "password": password.text.toString(),
        "cname": companyname.text.toString(),
        "email": email.text.toString(),
        "pnum": phoneno.text,
        "verified": 0,
        "b_id": 123456
      });
      try {
        Response response = await dio.post(url, data: body);
        print(response.data);
      } catch (err) {
        print(err);
      }
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) =>
              EventGridtoOrganiser(username.text.toString())));
    }

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 233, 222),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Text(
                    "EVENTO",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 45,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
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
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 52, 67, 73), width: 3),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      labelText: "Username",
                      alignLabelWithHint: true,
                      labelStyle: const TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 52, 67, 73),
                          fontWeight: FontWeight.w600),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 52, 67, 73), width: 3),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  TextField(
                    controller: password,
                    keyboardType: TextInputType.name,
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 52, 67, 73), width: 3),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      labelText: "Password",
                      alignLabelWithHint: true,
                      labelStyle: const TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 52, 67, 73),
                          fontWeight: FontWeight.w600),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 52, 67, 73), width: 3),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  TextField(
                    controller: companyname,
                    keyboardType: TextInputType.name,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 52, 67, 73), width: 3),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      labelText: "Company name",
                      alignLabelWithHint: true,
                      labelStyle: const TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 52, 67, 73),
                          fontWeight: FontWeight.w600),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 52, 67, 73), width: 3),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  TextField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 52, 67, 73), width: 3),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      labelText: "Company Email",
                      alignLabelWithHint: true,
                      labelStyle: const TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 52, 67, 73),
                          fontWeight: FontWeight.w600),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 52, 67, 73), width: 3),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  TextField(
                    controller: phoneno,
                    keyboardType: TextInputType.phone,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 52, 67, 73), width: 3),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      labelText: "Company Phone number",
                      alignLabelWithHint: true,
                      labelStyle: const TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 52, 67, 73),
                          fontWeight: FontWeight.w600),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 52, 67, 73), width: 3),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  InkWell(
                    onTap: () => postuserdata(),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "Sign Up",
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
        ));
  }
}
