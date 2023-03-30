import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Resultados.dart';

const inactiveColor = Color(0xFF1D1E33);
const activeColor = Color(0xFF3700B3);

enum Genero {
  hombre,
  mujer,
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  Color hombreColor = inactiveColor;
  Color mujerColor = inactiveColor;

  Genero genSeleccionado = Genero.mujer;
  int altura = 160;
  int peso = 60;
  int edad = 21;
  double imc = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MONITOR DE SALUD'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Row(
              children: [
                Expanded(child: GestureDetector(
                  onTap: () {
                    setState(() {
                      genSeleccionado = Genero.hombre;
                    });
                  },
                  child: Container(
                    height: 200,
                    width: 170,
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: genSeleccionado == Genero.hombre ? activeColor : inactiveColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.mars, size: 65.0,),
                        SizedBox(height: 5.0,),
                        Text('Hombre', style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),)
                      ],
                    ),
                  ),
                )),
                Expanded(child: GestureDetector(
                  onTap: () {
                    setState(() {
                      genSeleccionado = Genero.mujer;
                    });
                  },
                  child: Container(
                    height: 200,
                    width: 170,
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: genSeleccionado == Genero.mujer ? activeColor : inactiveColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.venus, size: 65.0,),
                        SizedBox(height: 5.0,),
                        Text('Mujer', style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),)
                      ],
                    ),
                  ),
                )),
              ],
            )),
            Expanded(child: Container(
              height: 200,
              width: 170,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFF1D1E33),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Altura', style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98), fontWeight: FontWeight.w900),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('$altura', style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color: Color(0xFF8D8E98)),),
                      Text(' CM', style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),)
                    ],
                  ),
                  SliderTheme(
                    data : SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(disabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                        thumbColor: Color(0xFFEB1555),
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x29EB1555),
                        inactiveTrackColor: Color(0xFF8D8E98)
                    ),
                    child: Slider(
                      value: altura.toDouble(),
                      min: 40.0,
                      max: 210,
                      onChanged: (double nuevoValor) {
                        //print(nuevoValor);
                        setState(() {
                          altura = nuevoValor.round();
                        });
                      },
                      // activeColor: Color(0xFFEB1555),
                      // inactiveColor: Color(0xFF8D8E98),
                    ),
                  )
                ],
              ),
            )),
            Expanded(child: Row(
              children: [
                Expanded(child: Container(
                  height: 200,
                  width: 170,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFF1D1E33),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Peso', style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),),
                      SizedBox(height: 3.0,),
                      Text('$peso', style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900,),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton.small(
                            child: Icon(Icons.remove, color: Colors.white,),
                            backgroundColor: Color(0xFF4C4F5E),
                            onPressed: (){
                              setState(() {
                                peso--;
                              });
                            },
                          ),
                          FloatingActionButton.small(
                            child: Icon(Icons.add, color: Colors.white,),
                            backgroundColor: Color(0xFF4C4F5E),
                            onPressed: (){
                              setState(() {
                                peso++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(child: Container(
                  height: 200,
                  width: 170,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFF1D1E33),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Edad', style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),),
                      SizedBox(height: 3.0,),
                      Text('$edad', style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900,),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton.small(
                            child: Icon(Icons.remove, color: Colors.white,),
                            backgroundColor: Color(0xFF4C4F5E),
                            onPressed: (){
                              setState(() {
                                edad--;
                              });
                            },
                          ),
                          FloatingActionButton.small(
                            child: Icon(Icons.add, color: Colors.white,),
                            backgroundColor: Color(0xFF4C4F5E),
                            onPressed: (){
                              setState(() {
                                edad++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                )),
              ],
            )),
            GestureDetector(
              onTap: () {
                imc = (peso / ((altura/100)*(altura/100)));
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Resultados(imc : imc)));
              },
              child: Container(
                height: 50.0,
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10.0),
                child: Center(child: Text('Calcular', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)),
              ),
            ),
          ],
        )
    );
  }
}
