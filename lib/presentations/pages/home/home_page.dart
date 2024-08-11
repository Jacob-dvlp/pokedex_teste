import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex_test/core/core.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = HomeController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokémon List'),
      ),
      body: Observer(
        builder: (_) {
          if (controller.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (controller.errorMessage != null) {
            return Center(child: Text(controller.errorMessage!));
          }
          return ListView.builder(
            itemCount: controller.pokemonList.length,
            padding: const EdgeInsets.all(16),
            itemBuilder: (context, index) {
              final pokemon = controller.pokemonList[index];
              return Container(
                height: 110,
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor, borderRadius: BorderRadius.circular(16), boxShadow: const [BoxShadow(offset: Offset(0.2, 1))]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${extractPokemonId(pokemon.url)}º', style: Theme.of(context).textTheme.titleSmall),
                          const SizedBox(height: 4),
                          Text(pokemon.name, style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600, fontSize: 21)),
                        ],
                      ),
                    ),
                    Container(
                      width: 140,
                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(16), boxShadow: const [BoxShadow(offset: Offset(0.2, 1))]),
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.fetchPokemonList(offSet: 0, limit: 20); // Exemplo de parâmetros
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
