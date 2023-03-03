import 'package:flutter/material.dart';
import 'package:flutter_application_3/secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({
    super.key,
  });

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(224, 227, 231, 1),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 26.0,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                  child: Image.asset(
                'assets/images/MicrosoftTeams-image (1).png',
                height: 100,
                width: 100,
              )),
              const SizedBox(
                height: 30,
              ),
              TextField(
                  decoration: InputDecoration(
                      label: const Text(
                        "Email",
                        style: TextStyle(color: Colors.black87),
                      ),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.black87, width: 2.0),
                          borderRadius: BorderRadius.circular(10)))),
              const SizedBox(
                height: 30,
              ),
              TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(15)),
                      fillColor: Colors.black,
                      label: const Text(
                        "Password",
                        style: TextStyle(color: Colors.black87),
                      ),
                      focusColor: Colors.black,
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.black87, width: 2.0),
                          borderRadius: BorderRadius.circular(10)))),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        backgroundColor: const Color.fromRGBO(59, 59, 59, 1),
                      ),
                      onPressed: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondPage()),
                        );
                      }),
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.orange, fontSize: 20),
                      )))
            ],
          ),
        ));
  }
}
