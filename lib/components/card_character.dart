import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:list_name_project/stores/show_characters.dart';
import 'package:provider/provider.dart';

class CardCharacter extends StatelessWidget {
  final String name;
  final String imageUrl;

  const CardCharacter({super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final showCharacter = Provider.of<ShowCharacters>(context);

    return Observer(
      builder: (_) => Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl.isNotEmpty
                ? imageUrl
                : 'https://via.placeholder.com/200'),
          ),
          title: Text(name),
          trailing: IconButton(
              onPressed: () {
                showCharacter.removeCharacterByName();
              },
              icon: const Icon(Icons.delete)),
        ),
      ),
    );
  }
}
