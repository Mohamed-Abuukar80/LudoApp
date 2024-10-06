import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Test(),
  ));
}

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int ludoNumber = 1;
  int rightLudoNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffef788f),
      appBar: AppBar(
        elevation: 16,
        centerTitle: true,
        title: const Text('Ludo App'),
        backgroundColor: const Color(0xffef788f),
      ),
      body: Center(
        child: Row(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: InkWell(
                  splashColor: Color(0xffdb716a),
                  onTap: () {
                    setState(() {
                      ludoNumber = Random().nextInt(5) + 2;
                    });
                  },
                  child: Image.asset("images/$ludoNumber.png")),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: InkWell(
                splashColor: Color(0xffdb716a),
                onTap: () {
                  setState(() {
                    rightLudoNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset("images/$rightLudoNumber.png"),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
