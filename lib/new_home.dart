import 'package:flutter/material.dart';

import 'app_constents.dart';

class NewHomePage extends StatelessWidget {
  const NewHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildTopZone(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: AppConstents.backgroundColor,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                height: 500,
                width: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            buildButton(text: '+'),
                            buildButton(text: '-'),
                            buildButton(text: '/'),
                          ],
                        ),
                        Row(
                          children: [
                            buildButton(text: '7'),
                            buildButton(text: '8'),
                            buildButton(text: '9'),
                          ],
                        ),
                        Row(
                          children: [
                            buildButton(text: '4'),
                            buildButton(text: '5'),
                            buildButton(text: '6'),
                          ],
                        ),
                        Row(
                          children: [
                            buildButton(text: '1'),
                            buildButton(text: '2'),
                            buildButton(text: '3'),
                          ],
                        ),
                        Row(
                          children: [
                            buildButton(text: '%'),
                            buildButton(text: '0'),
                            buildButton(text: '.'),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildButton(text: 'C'),
                        buildButton(text: 'x'),
                        buildButton(text: '√'),
                        buildButton(
                            text: '=', width: 70, height: 170, radius: 40),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildButton(
      {String? text,
      VoidCallback? onPressed,
      double? width = 80,
      double? height = 80,
      double? radius = 50,
      Color? color}) {
    return Container(
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
            boxShadow: const [
              // BoxShadow(
              //   color: Color.fromARGB(255, 3, 3, 3),
              //   blurRadius: 2,
              //   offset: Offset(0, -4),
              // ),
            ],
            color: color ?? const Color.fromARGB(255, 5, 5, 5),
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(radius!)),
        height: height,
        width: width,
        child: Center(
            child: Text('$text',
                style: const TextStyle(color: Colors.yellow, fontSize: 30))));
  }

  Padding buildTopZone() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(8.0),
            color: AppConstents.backgroundColor,
          ),
          width: 400,
          height: 100,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('69 + 65',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '134',
                      style: TextStyle(fontSize: 24, color: AppConstents.color),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
