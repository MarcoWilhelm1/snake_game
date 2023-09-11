
import 'package:mobx/mobx.dart';
import 'package:snake_game/model/square.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store{

  @observable
  List<SquareModel> gameSquares = [];

  // @observable
  // List<SquareModel> teste1 = [];

  laPrimeiraFunction(){
    for(int i = 0; i<255; i++) {
      gameSquares.add(SquareModel());
    }
  }

  laSegundaFunction() async{
    List<SquareModel> backup = [];

    for(int i = 0; i<255; i++){
      SquareModel ajusteTecnico = SquareModel();
      ajusteTecnico.isMaca = gameSquares[i].isMaca;
      ajusteTecnico.isSnake = gameSquares[i].isSnake;
      ajusteTecnico.isTheHead = gameSquares[i].isTheHead;
      backup.add(ajusteTecnico);
      gameSquares[i].isSnake = false;
    }

    for(int i = 0; i<255; i++){
      if(backup[i].isSnake == true){
        gameSquares[i+1].isSnake = true;
      }
    }
    
    // await Future.delayed(Duration(seconds: 1));
    // laSegundaFunction();
  }

}