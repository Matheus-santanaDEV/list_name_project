import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:list_name_project/components/card_character.dart';
import 'package:list_name_project/stores/show_characters.dart';

class ShowUserScreen extends StatelessWidget {
  const ShowUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ShowCharacters showCharacters = ShowCharacters();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Usuários cadastrados'),
          backgroundColor: Colors.purple,
        ),
        body: Observer(
          builder: (_) => Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: showCharacters.showCharacterList.length,
                itemBuilder: (BuildContext context, int index) {

                  final characterExi = showCharacters.showCharacterList[index];

                  return CardCharacter(
                      name: characterExi.name,
                      imageUrl: characterExi.image);
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.push('/registerCharacterScreen');
          },
          child: const Icon(Icons.add),
        ));
  }
}
