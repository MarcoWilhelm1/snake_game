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

  late final _$isMacaAtom =
      Atom(name: 'SquareModelBase.isMaca', context: context);

  @override
  bool get isMaca {
    _$isMacaAtom.reportRead();
    return super.isMaca;
  }

  @override
  set isMaca(bool value) {
    _$isMacaAtom.reportWrite(value, super.isMaca, () {
      super.isMaca = value;
    });
  }

  late final _$isTheHeadAtom =
      Atom(name: 'SquareModelBase.isTheHead', context: context);

  @override
  bool get isTheHead {
    _$isTheHeadAtom.reportRead();
    return super.isTheHead;
  }

  @override
  set isTheHead(bool value) {
    _$isTheHeadAtom.reportWrite(value, super.isTheHead, () {
      super.isTheHead = value;
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

  @override
  String toString() {
    return '''
isSnake: ${isSnake},
isMaca: ${isMaca},
isTheHead: ${isTheHead},
isWall: ${isWall}
    ''';
  }
}
