import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    controller.generateList();
    controller.gameSquares[1][8].isSnake = true;
    controller.gameSquares[1][8].isTheTail = true;
    controller.gameSquares[2][8].isSnake = true;
    controller.gameSquares[8][8].isFood = true;

    Future.delayed(Duration(seconds: 1)).then((value) => controller.movement());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey ,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        toolbarHeight: 50,
      ),
      body: Center(
        child: Container(
          color: Colors.blueGrey,
          width: 570,
          height: 510,
          child: Observer(
            builder: (_) => RawKeyboardListener(
              autofocus: true,
              focusNode: FocusNode(),
              onKey: (event) async{
                if (event is RawKeyDownEvent) {
                  // if (event.isKeyPressed(LogicalKeyboardKey.)) {
                   
                  // }
                }
              },
              child: Row(
                children: controller.gameSquares.map((e) {
                  return Column(
                    children: e.map((e) {
                      return Container(
                        height: 30,
                        width: 30,
                        color: e.isWall ? Colors.transparent : e.isSnake ? Colors.red : e.isFood ? Colors.orange : e.color,
                      );
                    }).toList(),
                  );
                }).toList(),
              )
            ),
          ),
        ),
      ),
    );
  }
}