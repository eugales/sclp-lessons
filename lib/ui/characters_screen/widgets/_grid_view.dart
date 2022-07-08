part of '../characters_screen.dart';

class _GridView extends StatelessWidget {
  const _GridView(
    this.characters, {
    Key? key,
  }) : super(key: key);

  final List<Character> characters;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.8,
      children: characters.map((character) {
        return InkWell(
          child: CharacterGridTile(
            character,
            key: ObjectKey(character),
            size: MediaQuery.of(context).size,
          ),
          onTap: () {},
        );
      }).toList(),
    );
  }
}
