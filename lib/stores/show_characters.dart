import 'package:flutter/material.dart';
import 'package:list_name_project/mock/character.dart';
import 'package:list_name_project/stores/characters_list.dart';

import 'package:mobx/mobx.dart';

part 'show_characters.g.dart';

class ShowCharacters = _ShowCharacters with _$ShowCharacters;

CharactersList charactersListStore = CharactersList();

abstract class _ShowCharacters with Store {
  ObservableList<Character> showCharacterList =
      charactersListStore.characterList;

  @observable
  String nameToRemove = '';

  @observable
  TextEditingController nameController = TextEditingController();

  @observable
  TextEditingController imgUrlController = TextEditingController();

  @action
  void insertCharacter() {
    if (nameController.text.isNotEmpty && imgUrlController.text.isNotEmpty) {
      showCharacterList.add(
          Character(name: nameController.text, image: imgUrlController.text));

      nameToRemove = nameController.text;

      nameController.clear();
      imgUrlController.clear();
    }
  }

  void removeCharacterByName() {
    showCharacterList
        .removeWhere((character) => character.name == nameToRemove);
  }
}
