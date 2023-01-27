import 'dart:math';

import 'package:flutter/material.dart';

class VidenteVirtual extends StatefulWidget {
  const VidenteVirtual({Key? key}) : super(key: key);

  @override
  State<VidenteVirtual> createState() => _VidenteVirtualState();
}

class _VidenteVirtualState extends State<VidenteVirtual> {
  var numeroImagem = 1;

  void alteraVidente() {
    setState(() {
      numeroImagem = Random().nextInt(5) + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff332B25),
        appBar: AppBar(
          title: const Text('Vidente Virtual'),
          backgroundColor: Colors.brown[800],
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              alteraVidente();
            },
            child: Image.asset('assets/images/vidente$numeroImagem.png'),
          ),
        ),
      ),
    );
  }
}
