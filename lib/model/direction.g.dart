// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direction.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Direction on DirectionBase, Store {
  late final _$isUpAtom = Atom(name: 'DirectionBase.isUp', context: context);

  @override
  bool get isUp {
    _$isUpAtom.reportRead();
    return super.isUp;
  }

  @override
  set isUp(bool value) {
    _$isUpAtom.reportWrite(value, super.isUp, () {
      super.isUp = value;
    });
  }

  late final _$isLeftAtom =
      Atom(name: 'DirectionBase.isLeft', context: context);

  @override
  bool get isLeft {
    _$isLeftAtom.reportRead();
    return super.isLeft;
  }

  @override
  set isLeft(bool value) {
    _$isLeftAtom.reportWrite(value, super.isLeft, () {
      super.isLeft = value;
    });
  }

  late final _$isDownAtom =
      Atom(name: 'DirectionBase.isDown', context: context);

  @override
  bool get isDown {
    _$isDownAtom.reportRead();
    return super.isDown;
  }

  @override
  set isDown(bool value) {
    _$isDownAtom.reportWrite(value, super.isDown, () {
      super.isDown = value;
    });
  }

  late final _$isRightAtom =
      Atom(name: 'DirectionBase.isRight', context: context);

  @override
  bool get isRight {
    _$isRightAtom.reportRead();
    return super.isRight;
  }

  @override
  set isRight(bool value) {
    _$isRightAtom.reportWrite(value, super.isRight, () {
      super.isRight = value;
    });
  }

  @override
  String toString() {
    return '''
isUp: ${isUp},
isLeft: ${isLeft},
isDown: ${isDown},
isRight: ${isRight}
    ''';
  }
}
