
import 'package:mobx/mobx.dart';
import 'package:snake_game/model/square.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store{
  
  List<List<SquareModel>> gameSquares = [];

  List<SquareModel> gameSquaresteste = [];

  laPrimeiraFunction(){
    for(int i = 0; i<255; i++) {
      gameSquaresteste.add(SquareModel());
    }
  }

}