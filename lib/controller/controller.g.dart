// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Controller on ControllerBase, Store {
  late final _$clickCountAtom =
      Atom(name: 'ControllerBase.clickCount', context: context);

  @override
  int get clickCount {
    _$clickCountAtom.reportRead();
    return super.clickCount;
  }

  @override
  set clickCount(int value) {
    _$clickCountAtom.reportWrite(value, super.clickCount, () {
      super.clickCount = value;
    });
  }

  late final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase', context: context);

  @override
  dynamic addClick() {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.addClick');
    try {
      return super.addClick();
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
clickCount: ${clickCount}
    ''';
  }
}
