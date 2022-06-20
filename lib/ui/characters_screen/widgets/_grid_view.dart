part of '../characters_screen.dart';

class _GridView extends StatelessWidget {
  _GridView({
    Key? key,
    required this.characters,
  }) : super(key: key);

  List<Character> characters;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 24,
      childAspectRatio: 0.9,
      children: characters.map((character) {
        return InkWell(
          child: CharacterGridTile(character: character),
          onTap: () {},
        );
      }).toList(),
    );
  }
}
