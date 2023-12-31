// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Controller on ControllerBase, Store {
  late final _$gameSquaresAtom =
      Atom(name: 'ControllerBase.gameSquares', context: context);

  @override
  List<List<SquareModel>> get gameSquares {
    _$gameSquaresAtom.reportRead();
    return super.gameSquares;
  }

  @override
  set gameSquares(List<List<SquareModel>> value) {
    _$gameSquaresAtom.reportWrite(value, super.gameSquares, () {
      super.gameSquares = value;
    });
  }

  late final _$movementAsyncAction =
      AsyncAction('ControllerBase.movement', context: context);

  @override
  Future movement() {
    return _$movementAsyncAction.run(() => super.movement());
  }

  @override
  String toString() {
    return '''
gameSquares: ${gameSquares}
    ''';
  }
}
