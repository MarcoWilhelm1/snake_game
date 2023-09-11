import 'package:flutter/material.dart';
import 'package:snake_game/controller/controller.dart';

class GameView extends StatefulWidget {
  const GameView({super.key});

  @override
  State<GameView> createState() => _GameViewState();
}

final controller = Controller();

class _GameViewState extends State<GameView> {

  @override
  void initState() {
    super.initState();
    controller.laPrimeiraFunction();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        
      ),// 17 horizontal 15 vertical
      body: Center(
        child: Container(
          color: Colors.white,
          width: 510,
          height: 450,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 17,), 
            itemCount: controller.gameSquaresteste.length,
            itemBuilder: (context, index) {
              return Container(
                color: index % 2 == 0 ? Colors.green : Colors.green[800],
              );
            },
          ),
        ),
      ),
    );
  }
}