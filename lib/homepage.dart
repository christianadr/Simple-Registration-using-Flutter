import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trialapp/registration_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(200, 42, 37, 92),
              Color.fromARGB(255, 182, 64, 116),
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: StreamBuilder<Object>(
            stream: null,
            builder: (context, snapshot) {
              return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 200, 15, 5),
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width - 200,
                        height: 300,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [
                                Color.fromARGB(255, 202, 198, 225),
                                Color.fromARGB(255, 255, 196, 159),
                              ],
                            ),
                            image: const DecorationImage(
                              image: AssetImage("images/monkey.png"),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(50.0)),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(100, 100, 100, 5),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                textStyle: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                                backgroundColor:
                                    const Color.fromARGB(255, 201, 124, 0)),
                            onPressed: () {
                              if (kDebugMode) {
                                print("Logging in ...");
                              }
                            },
                            child: const Text("Login"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(100, 5, 100, 0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                textStyle: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                                backgroundColor:
                                    const Color.fromARGB(255, 201, 124, 0)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const RegistrationPage(),
                                ),
                              );
                            },
                            child: const Text("Register"),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              );
            }),
      ),
    );
  }
}
