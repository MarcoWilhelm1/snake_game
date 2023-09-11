
import 'package:mobx/mobx.dart';
import 'package:snake_game/model/square.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store{

  // 19 horizontal 17 vertical
  int length = 323;

  @observable
  List<SquareModel> gameSquares = [];

  laPrimeiraFunction(){
    for(int i = 0; i<length; i++) {
      gameSquares.add(SquareModel());
      if(i >= 0 && i < 19) {
        gameSquares[i].isWall = true;
      }
      if(i <= length && i > length - 19) {
        gameSquares[i].isWall = true;
      }
      if(i % 19 == 0) {
        gameSquares[i].isWall = true;
      }
      if((i-18) % 19 == 0) {
        gameSquares[i].isWall = true;
      }
    }
  }

  laSegundaFunction() async{
    List<SquareModel> backup = [];

    for(int i = 0; i<length; i++){
      SquareModel ajusteTecnico = SquareModel();
      ajusteTecnico.isMaca = gameSquares[i].isMaca;
      ajusteTecnico.isSnake = gameSquares[i].isSnake;
      ajusteTecnico.isTheHead = gameSquares[i].isTheHead;
      ajusteTecnico.isWall = gameSquares[i].isWall;
      backup.add(ajusteTecnico);
      gameSquares[i].isSnake = false;
    }

    for(int i = 0; i<length; i++){
      if(backup[i].isSnake == true){
        gameSquares[i+1].isSnake = true;
      }
    }
    
    // await Future.delayed(Duration(seconds: 1));
    // laSegundaFunction();
  }

}