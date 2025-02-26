import 'package:drontips/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

bool passToggle = true;

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(Object context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: SafeArea(
                child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset("images/doctors.png")),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    labelText: " Full Name",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(CupertinoIcons.person)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Email address",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: InkWell(
                      onTap: () {
                        passToggle = !passToggle;
                        setState(() {});
                      },
                      child: passToggle
                          ? Icon(CupertinoIcons.eye_slash_fill)
                          : Icon(CupertinoIcons.eye_fill),
                    )),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
              child: SizedBox(
                width: double.infinity,
                child: Material(
                    color: const Color.fromARGB(255, 4, 115, 205),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                            this.context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()))
                      },
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 40),
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(this.context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    "Log In ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        ))));
  }
}
