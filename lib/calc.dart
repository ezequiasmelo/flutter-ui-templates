import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  var visor = "";

  void setVisor(String text) {
    setState(() {
      visor = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: const Text('Calculadora'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              margin: const EdgeInsets.all(15.0),
              width: 400.0,
              height: 120.0,
              child: Center(
                child: Text(
                  visor,
                  style: const TextStyle(fontSize: 50.0),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      CustomElevatedButton(
                        text: 'C',
                        color: Colors.blue,
                        onPressed: () {
                          setVisor('C');
                        },
                      ),
                      CustomElevatedButton(
                        text: 'DEL',
                        color: Colors.blue,
                        onPressed: () {
                          setVisor('DEL');
                        },
                      ),
                      CustomElevatedButton(
                        text: '%',
                        color: Colors.blue,
                        onPressed: () {
                          setVisor('%');
                        },
                      ),
                      CustomElevatedButton(
                        text: '/',
                        color: Colors.blue,
                        onPressed: () {
                          setVisor('/');
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomElevatedButton(
                        text: '7',
                        onPressed: () {
                          setVisor('7');
                        },
                      ),
                      CustomElevatedButton(
                        text: '8',
                        onPressed: () {
                          setVisor('8');
                        },
                      ),
                      CustomElevatedButton(
                        text: '9',
                        onPressed: () {
                          setVisor('9');
                        },
                      ),
                      CustomElevatedButton(
                        text: '*',
                        color: Colors.blue,
                        onPressed: () {
                          setVisor('*');
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomElevatedButton(
                        text: '4',
                        onPressed: () {
                          setVisor('4');
                        },
                      ),
                      CustomElevatedButton(
                        text: '5',
                        onPressed: () {
                          setVisor('5');
                        },
                      ),
                      CustomElevatedButton(
                        text: '6',
                        onPressed: () {
                          setVisor('6');
                        },
                      ),
                      CustomElevatedButton(
                        text: '+',
                        color: Colors.blue,
                        onPressed: () {
                          setVisor('+');
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomElevatedButton(
                        text: '1',
                        onPressed: () {
                          setVisor('1');
                        },
                      ),
                      CustomElevatedButton(
                        text: '2',
                        onPressed: () {
                          setVisor('2');
                        },
                      ),
                      CustomElevatedButton(
                        text: '3',
                        onPressed: () {
                          setVisor('3');
                        },
                      ),
                      CustomElevatedButton(
                        text: '/',
                        color: Colors.blue,
                        onPressed: () {
                          setVisor('/');
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomElevatedButton(
                        text: '0',
                        onPressed: () {
                          setVisor('0');
                        },
                      ),
                      CustomElevatedButton(
                        text: '.',
                        color: Colors.blue,
                        onPressed: () {
                          setVisor('.');
                        },
                      ),
                      CustomElevatedButton(
                        text: '=',
                        color: Colors.blue,
                        onPressed: () {
                          setVisor('=');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color? color;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 60.0,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
            ),
            child: Text(
              text,
              style: TextStyle(
                color: color ?? Colors.white,
                fontSize: 30.0,
              ),
            )),
      ),
    );
  }
}
