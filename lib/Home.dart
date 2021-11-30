import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Home extends StatelessWidget {
  void tocarSom(int numSom) {
    final player = AudioCache();
    player.play('assets_nota$numSom.wav');
  }

  Expanded Tecla({required int numeroNota, required Color cor}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          tocarSom(numeroNota);
        },
        style: TextButton.styleFrom(backgroundColor: cor),
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Marimba'),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Tecla(cor: Colors.deepPurpleAccent, numeroNota: 1),
              Tecla(cor: Colors.deepOrange, numeroNota: 2),
              Tecla(cor: Colors.limeAccent, numeroNota: 3),
              Tecla(cor: Colors.black12, numeroNota: 4),
              Tecla(cor: Colors.blue, numeroNota: 5),
              Tecla(cor: Colors.red, numeroNota: 6),
              Tecla(cor: Colors.lightGreen, numeroNota: 7),
            ],
          ),
        ),
      ),
    );
  }
}
