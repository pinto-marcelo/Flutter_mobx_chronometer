import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttermobx/components/CronometroBotao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hora de trabalhar",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "25:00",
            style: TextStyle(
              fontSize: 80,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                //padding: const EdgeInsets.only(right: 10),
                child: CronometroBotao(
                  texto: "Iniciar",
                  icone: Icons.play_arrow,
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(10),
              //padding: const EdgeInsets.only(right: 10),
              //   child: CronometroBotao(
              //     texto: "Parar",
              //     icone: Icons.stop,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(10),
                //padding: const EdgeInsets.only(left: 10),
                child: CronometroBotao(
                  texto: "Reiniciar",
                  icone: Icons.refresh,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
