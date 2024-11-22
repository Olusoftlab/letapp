import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('login'), backgroundColor: Colors.teal),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Login',
                      style: Theme.of(context).textTheme.headlineMedium),
                  SizedBox(height: 10),
                  TextField(
                      decoration: InputDecoration(
                          labelText: "Emal",
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
                  ElevatedButton(
                      onPressed: () =>
                          Navigator.pushReplacementNamed(context, "/dashboard"),
                      child: Text("login"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          foregroundColor: Colors.white)),
                  TextButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, "/register"),
                      child: Text("Dont have an account, Register here"))
                ])));
  }
}
