import 'package:list_name_project/mock/character.dart';
import 'package:mobx/mobx.dart';
part 'characters_list.g.dart';

class CharactersList = _CharactersList with _$CharactersList;

abstract class _CharactersList with Store{

  final ObservableList<Character> characterList = ObservableList.of([

      Character(name: 'Morty', image: 'https://static.tvtropes.org/pmwiki/pub/images/morty_smith_2.png')

  ]);

}