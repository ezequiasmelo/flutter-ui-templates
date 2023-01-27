import 'dart:math';

import 'package:flutter/material.dart';

class Dadoos extends StatefulWidget {
  const Dadoos({super.key});

  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  var numeroDadoEsquerda = 1;
  var numeroDadoDireita = 1;

  void alteraNumeroDados() {
    setState(() {
      numeroDadoEsquerda = Random().nextInt(6) + 1;
      numeroDadoDireita = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: const Text('Dadoos'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              alteraNumeroDados();
            },
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                        'assets/images/dado$numeroDadoEsquerda.png'),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Image.asset('assets/images/dado$numeroDadoDireita.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
