import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex_2022/common/repositories/pokemon_repository.dart';
import 'package:flutter_pokedex_2022/features/pokedex/route.dart';
import 'features/pokedex/screens/home/container/home_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex 2k22',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: PokedexRoute(
        repository: PokemonRepository(
          dio: Dio(),
        ),
      ),
    );
  }
}
