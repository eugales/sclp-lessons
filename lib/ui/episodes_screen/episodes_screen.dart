import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lessons2/bloc/episodes/episodes_bloc.dart';
import 'package:lessons2/generated/l10n.dart';
import 'package:lessons2/models/episodes.dart';
import 'package:lessons2/ui/episodes_screen/widgets/episode_list_tile.dart';
import 'package:lessons2/ui/widgets/app_list_view.dart';
import 'package:lessons2/ui/widgets/app_nav_bar.dart';
import 'package:lessons2/ui/widgets/app_error_button.dart';

part 'widgets/body.dart';

class EpisodesScreen extends StatelessWidget {
  const EpisodesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: AppNavBar(key: UniqueKey(), currentIndex: 2),
      appBar: AppBar(
        elevation: 0,
        title: Text(S.of(context).episodes),
      ),
      body: SafeArea(
        child: BlocBuilder<EpisodesBloc, EpisodesState>(
          builder: (context, state) {
            return state.map(
                initial: (value) => const SizedBox.shrink(),
                loading: (value) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                data: (value) {
                  return Stack(
                    children: [
                      Body(
                        data: value.data,
                        isEndOfData: value.isEndOfData,
                      ),
                      if (value.isLoading)
                        const Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: LinearProgressIndicator(),
                        )
                    ],
                  );
                },
                error: (value) => AppErrorButton(
                      errorMessage: value.errorMessage,
                      callback: () {
                        BlocProvider.of<EpisodesBloc>(context)
                            .add(const EpisodesEventFetch());
                      },
                    ));
          },
        ),
      ),
    );
  }
}
