import 'package:flutter/material.dart';

class CalculPage extends StatefulWidget {
  const CalculPage({Key? key}) : super(key: key);

  @override
  State<CalculPage> createState() => _CalculPageState();
}

class _CalculPageState extends State<CalculPage> {
  String? _result = '';
  String? _typedNumber = '0';
  String x = 'e';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
          //line for each column
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // screen
            Text('data'),
            screen(context, _result!),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              height: 400,
              decoration: const BoxDecoration(
                // color: Color.fromARGB(255, 200, 41, 41),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      operationButton(text: 'x'),
                      operationButton(text: '/'),
                      operationButton(text: '_'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      aculaterButton(text: '1'),
                      aculaterButton(text: '2'),
                      aculaterButton(text: '3'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      aculaterButton(text: '3'),
                      aculaterButton(text: '4'),
                      aculaterButton(text: '5'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      aculaterButton(text: '6'),
                      aculaterButton(text: '7'),
                      aculaterButton(text: '8'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      aculaterButton(text: '9'),
                      aculaterButton(text: '0'),
                      operationButton(text: '+'),
                    ],
                  ),
                ],
              ),
            ),
            // foreach row
            aculaterButton(text: '='),
          ]),
    );
  }

  Widget screen(BuildContext context, String result) {
    return Container(
      margin: const EdgeInsets.all(6),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$result',
              style: TextStyle(
                color: Colors.red.shade600,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.red),
      ),
    );
  }

  Widget aculaterButton({String? text, String? number}) {
    return Container(
      width: 100,
      height: 50,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(6),
      child: ElevatedButton(
        style: TextButton.styleFrom(
          // minimumSize: const Size(100, 30),
          elevation: 0,
          backgroundColor: const Color(0xFFFFFFFF),
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
        child: Text(
          '$text',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        onPressed: () {
          setState(() {
            switch (text) {
              case '1':
                _result = '$_result' '1';
                break;
              case '2':
                _result = '$_result' '2';
                break;
              case '3':
                _result = '$_result' '3';
                break;
              case '4':
                _result = '$_result' '4';
                break;
              case '5':
                _result = '$_result' '5';
                break;
              case '6':
                _result = '$_result' '6';
                break;
              case '0':
                _result = '$_result' '0';
                break;
              case '7':
                _result = '$_result' '7';
                break;
              case '8':
                _result = '$_result' '8';
                break;
              case '9':
                _result = '$_result' '9';
                break;
              default:
            }
          });
        },
      ),
    );
  }

  Widget operationButton({String? text, String? number}) {
    return Container(
      width: 100,
      height: 50,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(6),
      child: ElevatedButton(
        style: TextButton.styleFrom(
          // minimumSize: const Size(100, 30),
          elevation: 0,
          backgroundColor: const Color(0xFFFFFFFF),
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
        child: Text(
          '$text',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        onPressed: () {
          setState(() {
            switch (text) {
              case '+':
                // _result = '${double.parse(_result) + double.parse(number)}';

                break;
              default:
            }
          });
        },
      ),
    );
  }
}
