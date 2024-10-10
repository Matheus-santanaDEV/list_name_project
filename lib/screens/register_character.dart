import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:list_name_project/components/input_field.dart';
import 'package:list_name_project/stores/show_characters.dart';
import 'package:provider/provider.dart';

class RegisterCharacter extends StatelessWidget {
  const RegisterCharacter({super.key});

  @override
  Widget build(BuildContext context) {
    final showCharacterInfo = Provider.of<ShowCharacters>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cadastre seu personagem',
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Observer(
          builder: (_) => Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              InputField(
                labelText: 'Nome do Personagem',
                controller: showCharacterInfo.nameController,
              ),
              InputField(
                labelText: 'Url da Imagem',
                controller: showCharacterInfo.imgUrlController,
              ),
              const SizedBox( 
                height: 20,
              ),
              ElevatedButton(onPressed: showCharacterInfo.insertCharacter, child: const Text('Cadastrar'))
            ],
          ),
        ),
      ),
    );
  }
}
