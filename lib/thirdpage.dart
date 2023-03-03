import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(224, 227, 231, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(59, 59, 59, 1),
          elevation: 0.0,
          title: Text(
            'Checkout',
            style: TextStyle(fontSize: 22, color: Colors.orange),
          ),
          leading: Icon(
            Icons.chevron_left,
            color: Colors.orange,
          )),
    );
  }
}
