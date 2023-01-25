// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Calc extends StatelessWidget {
  const Calc({super.key});

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
              child: const Center(
                child: Text(
                  'Visor',
                  style: TextStyle(fontSize: 50.0),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: const [
                      CustomElevatedButton(text: 'C', color: Colors.blue),
                      CustomElevatedButton(text: 'DEL', color: Colors.blue),
                      CustomElevatedButton(text: '%', color: Colors.blue),
                      CustomElevatedButton(text: '/', color: Colors.blue),
                    ],
                  ),
                  Row(
                    children: const [
                      CustomElevatedButton(text: '7'),
                      CustomElevatedButton(text: '8'),
                      CustomElevatedButton(text: '9'),
                      CustomElevatedButton(text: '*', color: Colors.blue),
                    ],
                  ),
                  Row(
                    children: const [
                      CustomElevatedButton(text: '4'),
                      CustomElevatedButton(text: '5'),
                      CustomElevatedButton(text: '6'),
                      CustomElevatedButton(text: '+', color: Colors.blue),
                    ],
                  ),
                  Row(
                    children: const [
                      CustomElevatedButton(text: '1'),
                      CustomElevatedButton(text: '2'),
                      CustomElevatedButton(text: '3'),
                      CustomElevatedButton(text: '/', color: Colors.blue),
                    ],
                  ),
                  Row(
                    children: const [
                      CustomElevatedButton(text: '0'),
                      CustomElevatedButton(text: '.', color: Colors.blue),
                      CustomElevatedButton(text: '=', color: Colors.blue),
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

  const CustomElevatedButton({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 60.0,
        child: ElevatedButton(
            onPressed: () {},
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
