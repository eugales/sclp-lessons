part of '../characters_screen.dart';

class _GridView extends StatelessWidget {
  _GridView(
    this.characters, {
    Key? key,
  }) : super(key: key);

  List<Character> characters;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.only(top: 16),
      crossAxisCount: 2,
      mainAxisSpacing: 24,
      childAspectRatio: 0.9,
      children: characters.map((character) {
        return InkWell(
          child: CharacterGridTile(character),
          onTap: () {},
        );
      }).toList(),
    );
  }
}
