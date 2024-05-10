import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String resultado;
   Resultado(this.resultado);
   

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    var caminhoImagem;
    if(widget.resultado == "cara"){
      caminhoImagem = "imagens/moeda_cara.png";
    }else{
      caminhoImagem = "imagens/moeda_coroa.png";
    }



    return Scaffold(
      backgroundColor: Color(0xff61bd86),

      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

          Image.asset(caminhoImagem),

          GestureDetector(
            child: Image.asset("imagens/botao_voltar.png"),
            onTap: (){
              Navigator.pop(context);
            },
          )

        ]
        ),
      ),
    );
  }
}
