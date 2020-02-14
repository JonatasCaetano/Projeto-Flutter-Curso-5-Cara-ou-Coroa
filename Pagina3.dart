import 'package:cara_ou_coroa/Pagina2.dart';
import 'package:flutter/material.dart';

class Pagina3 extends StatefulWidget {

  String resultado;

  Pagina3(this.resultado);

   @override
  _Pagina3State createState() => _Pagina3State();
}

class _Pagina3State extends State<Pagina3> {
  @override
  Widget build(BuildContext context) {

    var imagemResultado;
    if (widget.resultado=='cara'){
      imagemResultado='imagens/moeda_cara.png';
    }else{
      imagemResultado='imagens/moeda_coroa.png';
    }
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(imagemResultado),
            GestureDetector(
                child: Image.asset('imagens/botao_voltar.png'),
                onTap: (){ Navigator.pop(context);
                }
            )
          ],
        ),
      )
    );
  }
}
