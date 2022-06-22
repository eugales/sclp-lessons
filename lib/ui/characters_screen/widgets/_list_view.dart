part of '../characters_screen.dart';

class _ListView extends StatelessWidget {
  const _ListView(
    this.characters, {
    Key? key,
  }) : super(key: key);

  final List<Character> characters;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final character = characters[index];
        return InkWell(
          child: CharacterListTile(
            character,
            key: ObjectKey(character),
            size: MediaQuery.of(context).size,
          ),
          onTap: () {},
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 8,
        );
      },
      itemCount: characters.length,
    );
  }
}
