import 'package:flutter/material.dart';

import 'dashboard.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _inputField("Name", nameController),
            const SizedBox(height: 20),
            _inputField("Email", emailController),
            const SizedBox(height: 20),
            _inputField("Password", passwordController, isPassword: true),
            const SizedBox(height: 20),
            _inputField("Confirm Password", confirmPasswordController, isPassword: true),
            const SizedBox(height: 20),
            _signupBtn(),
          ],
        ),
      ),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {isPassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.grey));

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: border,
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }

  Widget _signupBtn() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Name: ${nameController.text}");
        debugPrint("Email: ${emailController.text}");
        debugPrint("Password: ${passwordController.text}");
        debugPrint("Confirm Password: ${confirmPasswordController.text}");
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard()));
      },
      child: const SizedBox(
          width: double.infinity,
          child: Text(
            "Sign Up",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}
