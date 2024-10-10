import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:list_name_project/screens/register_character.dart';
import 'package:list_name_project/screens/show_user_screen.dart';
import 'package:list_name_project/stores/characters_list.dart';
import 'package:list_name_project/stores/show_characters.dart';
import 'package:provider/provider.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ShowUserScreen(),
    ),

    GoRoute(path: '/registerCharacterScreen', builder: (context, state) => const RegisterCharacter(),)

  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_)=>  ShowCharacters()),
        Provider(create: (_)=> CharactersList())
      ],
      child: MaterialApp.router(
        routerConfig: _router,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}

