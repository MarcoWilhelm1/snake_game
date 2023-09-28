// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'square.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SquareModel on SquareModelBase, Store {
  late final _$isSnakeAtom =
      Atom(name: 'SquareModelBase.isSnake', context: context);

  @override
  bool get isSnake {
    _$isSnakeAtom.reportRead();
    return super.isSnake;
  }

  @override
  set isSnake(bool value) {
    _$isSnakeAtom.reportWrite(value, super.isSnake, () {
      super.isSnake = value;
    });
  }

  late final _$isTheTailAtom =
      Atom(name: 'SquareModelBase.isTheTail', context: context);

  @override
  bool get isTheTail {
    _$isTheTailAtom.reportRead();
    return super.isTheTail;
  }

  @override
  set isTheTail(bool value) {
    _$isTheTailAtom.reportWrite(value, super.isTheTail, () {
      super.isTheTail = value;
    });
  }

  late final _$colorAtom =
      Atom(name: 'SquareModelBase.color', context: context);

  @override
  Color get color {
    _$colorAtom.reportRead();
    return super.color;
  }

  @override
  set color(Color value) {
    _$colorAtom.reportWrite(value, super.color, () {
      super.color = value;
    });
  }

  late final _$isWallAtom =
      Atom(name: 'SquareModelBase.isWall', context: context);

  @override
  bool get isWall {
    _$isWallAtom.reportRead();
    return super.isWall;
  }

  @override
  set isWall(bool value) {
    _$isWallAtom.reportWrite(value, super.isWall, () {
      super.isWall = value;
    });
  }

  late final _$isFoodAtom =
      Atom(name: 'SquareModelBase.isFood', context: context);

  @override
  bool get isFood {
    _$isFoodAtom.reportRead();
    return super.isFood;
  }

  @override
  set isFood(bool value) {
    _$isFoodAtom.reportWrite(value, super.isFood, () {
      super.isFood = value;
    });
  }

  late final _$direcaoAtom =
      Atom(name: 'SquareModelBase.direcao', context: context);

  @override
  Direction get direcao {
    _$direcaoAtom.reportRead();
    return super.direcao;
  }

  @override
  set direcao(Direction value) {
    _$direcaoAtom.reportWrite(value, super.direcao, () {
      super.direcao = value;
    });
  }

  @override
  String toString() {
    return '''
isSnake: ${isSnake},
isTheTail: ${isTheTail},
color: ${color},
isWall: ${isWall},
isFood: ${isFood},
direcao: ${direcao}
    ''';
  }
}
