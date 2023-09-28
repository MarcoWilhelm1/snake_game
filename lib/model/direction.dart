import 'package:mobx/mobx.dart';
part 'direction.g.dart';

class Direction = DirectionBase with _$Direction;

abstract class DirectionBase with Store{
  @observable
  bool isUp = false;
  @observable
  bool isLeft = false;
  @observable
  bool isDown = false;
  @observable
  bool isRight = true;
}