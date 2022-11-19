import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trialapp/login_view.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _phone;

  // Setting initState function to properly control both
  // late variables: _email and _password
  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    _phone = TextEditingController();
    super.initState();
  }

  // Disposing both emails and password after using it
  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _phone.dispose();
    super.dispose();
  }

  void clearText() {
    _email.clear();
    _password.clear();
    _phone.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        backgroundColor: const Color.fromARGB(200, 42, 37, 92),
      ),
      backgroundColor: Colors.transparent,
      body: StreamBuilder<Object>(
        builder: ((context, snapshot) {
          return Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 50, 15, 5),
                child: Text(
                  "Sign Up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 5),
                child: TextField(
                  enableSuggestions: false,
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: "Email Address",
                  ),
                  controller: _email,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: TextField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: "Enter Password",
                  ),
                  controller: _password,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 50),
                child: TextField(
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: "Enter Phone Number",
                  ),
                  controller: _phone,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  backgroundColor: const Color.fromARGB(200, 42, 37, 92),
                ),
                onPressed: () {
                  final email = _email.text;
                  final password = _password.text;
                  final phone = _phone.text;

                  if (kDebugMode) {
                    print("Email address: $email");
                    print("Password: $password");
                    print("Phone Number: $phone");
                  }

                  clearText();
                },
                child: const Text('Register'),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    child: Text(
                      "Already have an account?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text('Login'),
                    ),
                  )
                ],
              ),
            ],
          );
        }),
      ),
    );
  }
}
