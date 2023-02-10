import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 194, 93, 46),
        appBar: AppBar(
          title: Text('Vidente'),
          backgroundColor: Color.fromARGB(255, 222, 174, 144),
        ),
        body: VidenteVirtual(),
      ),
    ),
  );
}

class VidenteVirtual extends StatefulWidget {
  const VidenteVirtual({Key? key}) : super(key: key);

  @override
  _VidenteVirtualState createState() => _VidenteVirtualState();
}

class _VidenteVirtualState extends State<VidenteVirtual> {
  int numeroDaImagem = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: TextButton(
            onPressed: () {
              setState(() {
                numeroDaImagem = Random().nextInt(5) + 2;
              });
            },
            child: Image.asset('imagens/vidente$numeroDaImagem.png')),
      ),
    );
  }
}
