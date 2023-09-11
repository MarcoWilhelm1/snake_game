import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
    controller.gameSquares[153].isSnake = true;
    controller.gameSquares[154].isTheHead = true;
    controller.gameSquares[154].isSnake = true;
    Future.delayed(const Duration(seconds: 1)).then((value) => controller.laSegundaFunction());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        toolbarHeight: 50,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          width: 570,
          height: 510,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 19,), 
            itemCount: controller.gameSquares.length,
            itemBuilder: (context, index) {
              return Observer(
                builder: (_) => Container(
                  color: controller.gameSquares[index].isSnake ? Colors.orange : controller.gameSquares[index].isWall ? Colors.white : index % 2 == 0 ? Colors.green : Colors.green[800],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}