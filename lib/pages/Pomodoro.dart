import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttermobx/components/Cronometro.dart';
import 'package:provider/provider.dart';

import '../components/EntradaTempo.dart';
import '../store/pomodoro.store.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Cronometro(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              EntradaTempo(
                valor: store.tempoTrabalho,
                titulo: "Trabalho",
                inc: store.incrementarTempoTrabalho,
                dec: store.decrementarTempoTrabalho,
              ),
              EntradaTempo(
                valor: store.tempoDescanso,
                titulo: "Descanso",
                inc: store.incrementarTempoDescanso,
                dec: store.decrementarTempoDescanso,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
