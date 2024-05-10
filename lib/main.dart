import 'dart:math';

import 'package:app_caracoroa/resultado.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CaraCoroa(),
    )
    );
}

class CaraCoroa extends StatefulWidget {
  const CaraCoroa({super.key});

  @override
  State<CaraCoroa> createState() => _CaraCoroaState();
}

class _CaraCoroaState extends State<CaraCoroa> {

  void _exibirResultado(){
    var itens = ['cara','coroa'];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
     context,
     MaterialPageRoute(builder: (context)=> Resultado(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),

      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

          Image.asset("imagens/logo.png"),

          GestureDetector(
            child: Image.asset("imagens/botao_jogar.png"),
            onTap: _exibirResultado,
          )

        ]
        ),
      ),
    );
  }
}