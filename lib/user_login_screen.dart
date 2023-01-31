import 'package:flutter/material.dart';

class UserLoginScreen extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: Column(
          children: [
            const Text("Username"),
            TextField(controller: usernameController,),
            const Text("Password"),
            TextField(obscureText: true, controller: passwordController,),
            ElevatedButton(child: const Text("Sign in"), onPressed: () {
              print(usernameController.text);
              print(passwordController.text);
            },)
          ],
        ),
      ),
    );
  }
}
