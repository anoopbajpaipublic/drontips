import 'package:drontips/screens/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset("images/doctors.png"),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter username"),
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter password"),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                        onTap: () {
                          passToggle = !passToggle;
                          setState(() {});
                        },
                        child: passToggle
                            ? Icon(CupertinoIcons.eye_slash_fill)
                            : Icon(CupertinoIcons.eye_fill))),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(12),
              child: SizedBox(
                width: double.infinity,
                child: loginButtonFunction(context),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have any account? ",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()));
                  },
                  child: Text(
                    "Create Account ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }

  Material loginButtonFunction(BuildContext context) {
    return Material(
        color: const Color.fromARGB(255, 4, 115, 205),
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginScreen()))
          },
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              child: Text(
                "Log In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ));
  }
}
