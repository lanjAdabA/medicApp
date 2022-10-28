import 'package:assignment/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LoginForm());
  }
}

class LoginForm extends StatelessWidget {
  final _formkey = GlobalKey();

  LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.medical_information_rounded,
            size: 40,
            color: Colors.teal[700],
          ),
          Text(
            "MedicApp",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.teal[700],
            ),
          ),
          const SizedBox(height: 30),
          const Text("(This app is only for authorised staff)"),
          const SizedBox(height: 20),
          Card(
            elevation: 6,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            shadowColor: Colors.black,
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 5),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Enter your crudential",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.blue)),
                    child: TextFormField(
                      validator: (value) => null,
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: "username"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.blue)),
                    child: const TextField(
                      // validator: (value) => null,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "password"),
                      obscureText: true,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: ElevatedButton(
                      onPressed: () {
                        context.router.push(const DashboardRoute());
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue)),
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Forgot password?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        // context.router.push(const SignUpRoute());
                      },
                      child: const Text(
                        "reset",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Login issue? "),
                    Text(
                      "Contact Support",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Version: 1.12.0",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 12,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
