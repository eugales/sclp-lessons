import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lessons2/bloc/characters/bloc_characters.dart';
import 'package:lessons2/bloc/locations/bloc_locations.dart';
import 'package:lessons2/repo/api.dart';

import 'package:lessons2/repo/repo_characters.dart';
import 'package:lessons2/repo/repo_locations.dart';
import 'package:lessons2/repo/repo_settings.dart';

class InitWidget extends StatelessWidget {
  const InitWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => Api()),
        RepositoryProvider(create: (context) => RepoSettings()),
        RepositoryProvider(create: (context) => RepoCharacters()),
        RepositoryProvider(create: (context) => RepoLocations())
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => BlocCharacters(
              repo: RepositoryProvider.of<RepoCharacters>(context),
            )..add(EventCharactersFilterByName('')),
          ),
          BlocProvider(
            create: (context) => LocationsBloc(
              repo: RepositoryProvider.of<RepoLocations>(context),
            )..add(LocationsEventFilterByName('')),
          )
        ],
        child: child,
      ),
    );
  }
}
