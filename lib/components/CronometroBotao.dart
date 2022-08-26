import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  const CronometroBotao({
    Key? key,
    required this.texto,
    required this.icone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 10,
        ),
        textStyle: TextStyle(
          fontSize: 15,
        ),
      ),
      onPressed: () {},
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icone,
              size: 25,
            ),
          ),
          Text(texto),
        ],
      ),
    );
  }
}
