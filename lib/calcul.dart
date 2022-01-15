import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//String? result = '';/////////////////////////
final resultProvider = StateProvider<String>((ref) {
  return '';
});

final firstNumberProvider = StateProvider<String>((ref) {
  return '0';
});
final secondNumberProvider = StateProvider<String>((ref) {
  return '0';
});
final operationProvider = StateProvider<String>((ref) {
  return '+';
});

/////////////////////////////
///
class CalculPage extends ConsumerWidget {
  const CalculPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final result = ref.watch(resultProvider.state);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
          //line for each column
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // screen

            screen(context, ref, result.state),
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
                      operationButton(context, ref, text: 'x'),
                      operationButton(context, ref, text: '/'),
                      operationButton(context, ref, text: '_'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      aculaterButton(ref, text: '1'),
                      aculaterButton(ref, text: '2'),
                      aculaterButton(ref, text: '3'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      aculaterButton(ref, text: '3'),
                      aculaterButton(ref, text: '4'),
                      aculaterButton(ref, text: '5'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      aculaterButton(ref, text: '6'),
                      aculaterButton(ref, text: '7'),
                      aculaterButton(ref, text: '8'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      aculaterButton(ref, text: '9'),
                      aculaterButton(ref, text: '0'),
                      operationButton(context, ref, text: '+'),
                    ],
                  ),
                ],
              ),
            ),
            // foreach row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                operationButton(context, ref, text: '='),
                operationButton(context, ref, text: 'clear'),
              ],
            ),
          ]),
    );
  }
}

Widget screen(BuildContext context, WidgetRef ref, String result) {
  return Container(
    margin: const EdgeInsets.all(6),
    width: MediaQuery.of(context).size.width,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            result,
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

Widget aculaterButton(WidgetRef ref, {String? text, String? result}) {
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
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
      ),
      onPressed: () {
        switch (text) {
          case '1':
            ref.read(resultProvider.state).state += '1';

            break;
          case '2':
            ref.read(resultProvider.state).state += '2';
            break;
          case '3':
            ref.read(resultProvider.state).state += '3';
            break;
          case '4':
            ref.read(resultProvider.state).state += '4';
            break;
          case '5':
            ref.read(resultProvider.state).state += '5';
            break;
          case '6':
            ref.read(resultProvider.state).state += '6';
            break;
          case '0':
            ref.read(resultProvider.state).state += '0';
            break;
          case '7':
            ref.read(resultProvider.state).state += '7';
            break;
          case '8':
            ref.read(resultProvider.state).state += '8';
            break;
          case '9':
            ref.read(resultProvider.state).state += '9';
            break;
          default:
        }
      },
    ),
  );
}

Widget operationButton(BuildContext context, WidgetRef ref,
    {String? text, String? result}) {
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
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
      ),
      onPressed: () {
        final op = ref.read(operationProvider.state).state;
        final firstN = ref.read(firstNumberProvider.state).state;
        final secondN = ref.read(secondNumberProvider.state).state;
        //String res = ref.read(resultProvider.state).state;
        switch (text) {
          case '+':
            ref.read(operationProvider.state).state = '+';
            ref.read(firstNumberProvider.state).state =
                ref.read(resultProvider.state).state;
            reset(ref);
            break;
          case '=':
            ref.read(secondNumberProvider.state).state =
                ref.read(resultProvider.state).state;
            switch (op) {
              case '+':
                ref.read(resultProvider.state).state =
                    '${somme(int.parse(firstN), int.parse(secondN))}';
                break;
              default:
            }
            break;
          case 'clear':
            reset(ref);
            break;
          default:
        }
      },
    ),
  );
}

num somme(num a, num b) {
  return a + b;
}

double difference(a, b) {
  return a + b;
}

double produit(a, b) {
  return a * b;
}

double division(a, b) {
  return a / b;
}

void reset(WidgetRef ref) {
  ref.read(resultProvider.state).state = '';
}
