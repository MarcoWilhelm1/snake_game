import 'package:mobx/mobx.dart';
part 'square.g.dart';

class SquareModel = SquareModelBase with _$SquareModel;

abstract class SquareModelBase with Store{
  @observable
  bool isSnake = false;
  @observable
  bool isMaca = false;
  @observable
  bool isTheHead = false;
  @observable
  bool isWall = false;
}