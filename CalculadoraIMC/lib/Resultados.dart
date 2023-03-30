import 'package:flutter/material.dart';

class Resultados extends StatelessWidget {
  final double imc;
  const Resultados({Key? key, required this.imc}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
      ),
      body: _body(),
    );
  }
  _body(){
    List results = getResult();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child:
        Container(
          child: Text('Resultados', style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold
          ),
          ),
        ),
        ),
        Expanded(
          flex: 12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: Colors.white10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(results[0].toUpperCase(),
                                  style: TextStyle(
                                      color: results[1],
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(imc.toStringAsFixed(2),
                                  style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(results[2],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Colors.white70, fontSize: 18)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
  List getResult() {
    if (imc < 18.5) {
      return [
        "Peso bajo",
        Colors.orangeAccent,
        "Su peso se encuentra bajo, trate de ganar más peso"
      ];
    } else if (imc >= 18.5 && imc <= 24.9) {
      return [
        "Normal",
        Colors.greenAccent,
        "Todo bien, su peso se encuentra normal"
      ];
    } else if (imc >= 25 && imc <= 29.9) {
      return [
        "Sobrepeso",
        Colors.deepOrange,
        "Su peso se encuentra alto, trate de perder más peso"
      ];
    } else if (imc >= 30 && imc <= 34.9) {
      return [
        "Obesidad I",
        Colors.redAccent,
        "Su peso se encuentra en obesidad nivel 1, trate de perder más peso"
      ];
    } else if (imc >= 35 && imc <= 39.9) {
      return [
        "Obesidad II",
        Colors.redAccent,
        "Su peso se encuentra en obesidad nivel 2, intente perder más peso"
      ];
    } else if (imc >= 40 && imc <= 49.9) {
      return [
        "Obesidad III",
        Colors.red,
        "Su peso se encuentra en obesidad nivel 3, por su salud, debe perder más peso"
      ];
    } else {
      return [
        "Obesidad IV",
        Colors.red,
        "Su peso se encuentra en obesidad nivel 4, debe bajar de peso ¡su salud está en peligro!"
      ];
    }
  }
}