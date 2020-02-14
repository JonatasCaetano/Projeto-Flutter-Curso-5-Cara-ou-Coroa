import 'package:flutter/material.dart';
import 'Pagina3.dart';
import 'dart:math';

class Pagina2 extends StatefulWidget {
  @override
  _Pagina2State createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {

  void jogarMoeda(){
    var ladoMoeda = ['cara', 'coroa'];
    var valorLado = Random().nextInt(ladoMoeda.length);
    var resultado = ladoMoeda[valorLado];

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Pagina3(resultado))
    );
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
            Image.asset('imagens/logo.png'),
            GestureDetector(
                child: Image.asset('imagens/botao_jogar.png'),
                onTap: (){ jogarMoeda();
                }
            )
          ],
        ),
      ),
    );
  }
}

