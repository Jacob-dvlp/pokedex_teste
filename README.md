# Pokédex App - Desafio Avançado de Desenvolvimento Flutter

## Descrição

Este projeto é uma aplicação de Pokédex desenvolvida em Flutter, como parte de um desafio avançado de desenvolvimento. O objetivo é demonstrar habilidades no uso de Clean Architecture, gerenciamento de estado com MobX, injeção de dependência com GetIt, testes unitários, criação de channels para comunicação nativa e controle no uso de pacotes externos.

## Estrutura do Projeto

A estrutura do projeto segue o padrão de Clean Architecture, com as seguintes pastas principais:

```plaintext
.
├── app
│   ├── app.dart
│   ├── app_dependecies.dart
│   └── app_widget.dart
├── core
│   ├── base_http.dart
│   ├── base_repository.dart
│   ├── base_usecase.dart
│   ├── core.dart
│   ├── dependencies
│   │   ├── base_app_run.dart
│   │   ├── base_dependencies.dart
│   │   ├── dependencies.dart
│   │   ├── dependencies_get_it.dart
│   │   └── widget_dependencies.dart
│   ├── error
│   │   ├── base_failure.dart
│   │   └── exceptions.dart
│   ├── functions.dart
│   ├── infra
│   │   ├── base_connector.dart
│   │   └── base_http_interface.dart
│   ├── result_state.dart
│   └── splash
│       └── splash_page.dart
├── data
│   ├── data.dart
│   ├── datasources
│   │   ├── datasources.dart
│   │   └── get_pokemon_list_datasource.dart
│   └── repositories
│       ├── get_pokemon_list_repositorio.dart
│       └── repositories.dart
├── domain
│   ├── domain.dart
│   ├── entities
│   │   ├── ability_entity.dart
│   │   ├── detail_entity.dart
│   │   ├── dream_world_entity.dart
│   │   ├── entities.dart
│   │   ├── evolution_entity.dart
│   │   ├── home_entity.dart
│   │   ├── move_entity.dart
│   │   ├── official_artwork_entity.dart
│   │   ├── other_sprites_entity.dart
│   │   ├── pokemon_color.dart
│   │   ├── pokemon_entity.dart
│   │   ├── pokemon_list_entity.dart
│   │   ├── showdown_entity.dart
│   │   ├── sprites_entity.dart
│   │   ├── stats_entity.dart
│   │   └── type_entity.dart
│   ├── repositories
│   │   ├── get_pokemon_list_repositorio.dart
│   │   ├── pokemon_repository.dart
│   │   └── repositories.dart
│   └── usecases
│       ├── get_pokemon_list_usecase.dart
│       └── usecases.dart
├── main.dart
├── presentations
│   ├── pages
│   │   ├── home
│   │   │   ├── home.dart
│   │   │   ├── home_controller.dart
│   │   │   ├── home_dependecie.dart
│   │   │   ├── home_page.dart
│   │   │   ├── home_store.dart
│   │   │   └── home_store.g.dart
│   │   └── pages.dart
│   ├── presentation.dart
│   └── widgets
│       ├── card_pokemon_widget.dart
│       ├── loading_widget_vertical.dart
│       ├── search_widget.dart
│       └── widgets.dart
└── shared
    └── assets
        ├── assets.dart
        └── pokeicon_icons.dart
```


### Descrição das Pastas:

- **app/**: Contém a configuração principal da aplicação, incluindo a injeção de dependências e o widget principal.
- **core/**: Centraliza as funções e classes base, como casos de uso, repositórios, tratamento de erros e inicialização do app.
- **data/**: Implementa a lógica de acesso aos dados, incluindo datasources e repositórios.
- **domain/**: Contém as entidades, repositórios e casos de uso (usecases) que compõem o núcleo da aplicação.
- **presentations/**: Contém as telas (pages), controllers, stores do MobX e os widgets personalizados.
- **shared/**: Centraliza os recursos compartilhados como ícones e assets globais.

## Funcionalidades

- Listagem de Pokémons utilizando a PokeAPI.
- Detalhamento de Pokémons com exibição de informações como tipos, habilidades, e estatísticas.
- Busca de Pokémons em tempo real com atualização dinâmica da lista.
- Animações para uma experiência de usuário.

## Tecnologias Utilizadas

- **Flutter:** Framework principal para o desenvolvimento da aplicação.
- **MobX:** Gerenciamento de estado reativo.
- **GetIt:** Injeção de dependências.
- **PokeAPI:** API pública utilizada para obter os dados dos Pokémons.


## Instruções de Configuração

1. **Clone o Repositório:**

   ```bash
   git clone https://github.com/iBy3l/pokedex_teste.git
   cd pokedex_teste
   ```


## Instale as Dependências:

- **Certifique-se** de ter o Flutter instalado. Em seguida, execute:

```bash
flutter pub get
```

## Execução dos Testes:

- **Para rodar os testes unitários, utilize:**

```bash
flutter test
```
## Considerações Finais
Este projeto foi desenvolvido com foco na qualidade do código, seguindo as melhores práticas de desenvolvimento em Flutter. A estrutura modularizada permite escalabilidade e facilidade de manutenção.

