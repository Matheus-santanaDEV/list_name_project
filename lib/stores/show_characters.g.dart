// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_characters.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ShowCharacters on _ShowCharacters, Store {
  late final _$nameToRemoveAtom =
      Atom(name: '_ShowCharacters.nameToRemove', context: context);

  @override
  String get nameToRemove {
    _$nameToRemoveAtom.reportRead();
    return super.nameToRemove;
  }

  @override
  set nameToRemove(String value) {
    _$nameToRemoveAtom.reportWrite(value, super.nameToRemove, () {
      super.nameToRemove = value;
    });
  }

  late final _$nameControllerAtom =
      Atom(name: '_ShowCharacters.nameController', context: context);

  @override
  TextEditingController get nameController {
    _$nameControllerAtom.reportRead();
    return super.nameController;
  }

  @override
  set nameController(TextEditingController value) {
    _$nameControllerAtom.reportWrite(value, super.nameController, () {
      super.nameController = value;
    });
  }

  late final _$imgUrlControllerAtom =
      Atom(name: '_ShowCharacters.imgUrlController', context: context);

  @override
  TextEditingController get imgUrlController {
    _$imgUrlControllerAtom.reportRead();
    return super.imgUrlController;
  }

  @override
  set imgUrlController(TextEditingController value) {
    _$imgUrlControllerAtom.reportWrite(value, super.imgUrlController, () {
      super.imgUrlController = value;
    });
  }

  late final _$_ShowCharactersActionController =
      ActionController(name: '_ShowCharacters', context: context);

  @override
  void insertCharacter() {
    final _$actionInfo = _$_ShowCharactersActionController.startAction(
        name: '_ShowCharacters.insertCharacter');
    try {
      return super.insertCharacter();
    } finally {
      _$_ShowCharactersActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nameToRemove: ${nameToRemove},
nameController: ${nameController},
imgUrlController: ${imgUrlController}
    ''';
  }
}
