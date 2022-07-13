import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  CronometroBotao(
      {Key? key, required this.text, required this.icone, this.click})
      : super(key: key);

  final String text;
  final IconData icone;
  void Function()? click;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.black,
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
          )),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icone,
              size: 35,
            ),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
