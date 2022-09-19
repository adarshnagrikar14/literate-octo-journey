import 'package:dbms_mp/Login&Signup/LoginOption.dart';
import 'package:dbms_mp/Login&Signup/SignUpOption.dart';
import 'package:dbms_mp/Login&Signup/SignUpbyLogistic.dart';
import 'package:dbms_mp/Login&Signup/loginbyuser.dart';
import 'package:dbms_mp/Login&Signup/signupbyevent.dart';
import 'package:dbms_mp/Login&Signup/signupbyuser.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LoginEntry extends StatelessWidget {
  const LoginEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          "https://i.pinimg.com/736x/7f/8e/bb/7f8ebb0845f4b291bb0081b98359bd7c.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          // backgroundColor: Color.fromARGB(255, 255, 233, 222),
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: <Widget>[
                    // Image.network(
                    //   "https://media.istockphoto.com/vectors/group-of-people-stand-near-big-calendar-watches-document-time-work-vector-id1191395009?k=20&m=1191395009&s=612x612&w=0&h=16YL-UcPI2k4y7HTP7FryipjZIzBeJ4_E6gzxHM8pWw=",
                    //   // height: 100.0,
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    const Text(
                      "EVENTO",
                      style: TextStyle(
                        backgroundColor: Color.fromARGB(115, 62, 137, 241),
                        color: Color.fromARGB(255, 249, 248, 249),
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginOption()));
                      },
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignupOption()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            "SIGN UP",
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
      ],
    );
  }
}
