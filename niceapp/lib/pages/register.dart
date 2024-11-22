import "package:flutter/material.dart";

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Startup Registration",
                style: TextStyle(color: Colors.black)),
            backgroundColor: Colors.teal),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Registartion"),
                SizedBox(height: 10),
                TextField(
                    decoration: InputDecoration(
                        labelText: "Firstname",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)))),
                SizedBox(height: 10),
                TextField(
                    decoration: InputDecoration(
                        labelText: "Lastname",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)))),
                SizedBox(height: 10),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)))),
                SizedBox(height: 10),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Confirm Password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)))),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, "/"),
                    child: Text("Register"),
                    style: TextButton.styleFrom(foregroundColor: Colors.white)),
              ],
            )));
  }
}
