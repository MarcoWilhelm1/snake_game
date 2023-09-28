
// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:snake_game/model/direction.dart';
import 'package:snake_game/model/square.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store{

  // 19 horizontal 17 vertical
  int hori = 19;
  int vert = 17;

  @observable
  List<List<SquareModel>> gameSquares = []; 

  generateList(){
    List.generate(
      hori, (index) {
        gameSquares.add(List.generate(vert, (i) {
          if(index == 0 || index == 18 || i == 0 || i == 16)
            return SquareModel(isWall: true);
          else
            return SquareModel(color: index % 2 == 0 ? Colors.green : Colors.green.shade900);
        }));
      });
  }

  Direction directionTail = Direction();
  int indexHTail = 0;
  int indexVTail = 0;

  @action 
  movement() async{
    SquareModel tempHead = SquareModel();
    int indexH = 0;
    int indexV = 0;
    

    for(int h = 0; h < gameSquares.length; h++)
      for(int v = 0; v < gameSquares[h].length; v++){
        if(gameSquares[h][v].isSnake){

          if(hitWallOrTheApple(direction: gameSquares[h][v].direcao, h: h, v: v) == 2){
            gameSquares[h+1][v].isFood = false;
            gameSquares.forEach((element) {element.forEach((element) {element.isTheTail = false;});});
            gameSquares[indexHTail][indexVTail].isSnake = true;
            gameSquares[indexHTail][indexVTail].isTheTail = true;
            gameSquares[indexHTail][indexVTail].direcao = directionTail;
          }

          if(gameSquares[h][v].direcao.isRight){
            if(!gameSquares[h+1][v].isSnake){
              tempHead.direcao = gameSquares[h][v].direcao;
              tempHead.isTheTail = gameSquares[h][v].isTheTail;
              tempHead.isSnake = gameSquares[h][v].isSnake;
              indexH = h+1;
              indexV = v;
            }
            if(gameSquares[h+1][v].isSnake){
              if(gameSquares[h][v].isTheTail){ 
                gameSquares[h][v].isSnake = false;
                indexHTail = h;
                indexVTail = v;
                directionTail = gameSquares[h][v].direcao;
                gameSquares[h+1][v].isTheTail = true;  
              }else {
                gameSquares[h][v].direcao = gameSquares[h+1][v].direcao;
                gameSquares[h][v].isTheTail = gameSquares[h+1][v].isTheTail;
                gameSquares[h][v].isSnake = gameSquares[h+1][v].isSnake;
              } 
            }
          }

          if(gameSquares[h][v].direcao.isLeft){
            if(gameSquares[h-1][v].isSnake){
              if(gameSquares[h][v].isTheTail){ 
                gameSquares[h][v].isSnake = false;
                gameSquares[h-1][v].isTheTail = true;  
              }else {
                gameSquares[h][v].direcao = gameSquares[h-1][v].direcao;
                gameSquares[h][v].isTheTail = gameSquares[h-1][v].isTheTail;
                gameSquares[h][v].isSnake = gameSquares[h-1][v].isSnake;
              } 
            }
            if(!gameSquares[h-1][v].isSnake){
              tempHead.direcao = gameSquares[h][v].direcao;
              tempHead.isTheTail = gameSquares[h][v].isTheTail;
              tempHead.isSnake = gameSquares[h][v].isSnake;
              indexH = h-1;
              indexV = v;
            }
          }

          if(gameSquares[h][v].direcao.isDown){
            if(gameSquares[h][v+1].isSnake){
              if(gameSquares[h][v].isTheTail){ 
                gameSquares[h][v].isSnake = false;
                gameSquares[h][v+1].isTheTail = true;  
              }else {
                gameSquares[h][v].direcao = gameSquares[h][v+1].direcao;
                gameSquares[h][v].isTheTail = gameSquares[h][v+1].isTheTail;
                gameSquares[h][v].isSnake = gameSquares[h][v+1].isSnake;
              } 
            }
            if(!gameSquares[h][v+1].isSnake){
              tempHead.direcao = gameSquares[h][v].direcao;
              tempHead.isTheTail = gameSquares[h][v].isTheTail;
              tempHead.isSnake = gameSquares[h][v].isSnake;
              indexH = h;
              indexV = v+1;
            }
          }

          if(gameSquares[h][v].direcao.isUp){
            if(gameSquares[h][v-1].isSnake){
              if(gameSquares[h][v].isTheTail){ 
                gameSquares[h][v].isSnake = false;
                gameSquares[h][v-1].isTheTail = true;  
              }else {
                gameSquares[h][v].direcao = gameSquares[h][v-1].direcao;
                gameSquares[h][v].isTheTail = gameSquares[h][v-1].isTheTail;
                gameSquares[h][v].isSnake = gameSquares[h][v-1].isSnake;
              } 
            }
            if(!gameSquares[h][v-1].isSnake){
              tempHead.direcao = gameSquares[h][v].direcao;
              tempHead.isTheTail = gameSquares[h][v].isTheTail;
              tempHead.isSnake = gameSquares[h][v].isSnake;
              indexH = h;
              indexV = v-1;
            }
          }

        }
      }

    gameSquares[indexH][indexV].direcao = tempHead.direcao;
    gameSquares[indexH][indexV].isTheTail = tempHead.isTheTail;
    gameSquares[indexH][indexV].isSnake = tempHead.isSnake;
    
    
    await Future.delayed(const Duration(milliseconds: 500));
    movement();
  }

  hitWallOrTheApple({required Direction direction, required int h, required int v}){
    if(direction.isRight)
      if(gameSquares[h+1][v].isWall) return 1;
      else if(gameSquares[h+1][v].isFood) return 2;
      else return 0;
    if(direction.isLeft)
      if(gameSquares[h-1][v].isWall) return 1;
      else if(gameSquares[h-1][v].isFood) return 2;
      else return 0;
    if(direction.isUp)
      if(gameSquares[h][v-1].isWall) return 1;
      else if(gameSquares[h][v-1].isFood) return 2;
      else return 0;
    if(direction.isDown)
      if(gameSquares[h][v+1].isWall) return 1;
      else if(gameSquares[h][v+1].isFood) return 2;
      else return 0;
  }

}