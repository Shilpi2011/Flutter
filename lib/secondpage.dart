import 'package:flutter/material.dart';
import 'package:flutter_application_3/thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(224, 227, 231, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(59, 59, 59, 1),
          elevation: 0.0,
          actions: [
            IconButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdPage()),
                );
              }),
              icon: Icon(
                Icons.check,
                color: Colors.orange,
              ),
            )
          ],
          title: Text(
            'Cart',
            style: TextStyle(fontSize: 22, color: Colors.orange),
          ),
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.chevron_left,
              size: 40,
              color: Colors.orange,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, position) {
              return Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.5),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/MicrosoftTeams-image (1).png',
                        scale: 1.3,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 26,
                            width: 26,
                          ),
                          ElevatedButton(
                              onPressed: (() {}),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                backgroundColor:
                                    const Color.fromRGBO(59, 59, 59, 1),
                              ),
                              child: const Text(
                                'REMOVE',
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 15),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.orange),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: (() {}),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              fixedSize: const Size(85, 30),
                              backgroundColor:
                                  const Color.fromRGBO(59, 59, 59, 1),
                            ),
                            child: const Text(
                              'ADD',
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 15),
                            ),
                          ),
                        ],
                      )
                    ]),
              );
            },
          ),
        ));
  }
}
