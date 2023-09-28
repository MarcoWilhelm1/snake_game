import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:snake_game/model/direction.dart';
part 'square.g.dart';

class SquareModel = SquareModelBase with _$SquareModel;

abstract class SquareModelBase with Store{
  @observable
  bool isSnake = false;
  @observable
  bool isTheTail = false;
  @observable
  Color color = Colors.green;
  @observable
  bool isWall = false;
  @observable
  bool isFood = false;
  @observable
  Direction direcao = Direction();

  SquareModelBase({
    this.isSnake = false,
    this.color = Colors.green,
    this.isWall = false,
    this.isFood = false,
    this.isTheTail = false,
  });

}