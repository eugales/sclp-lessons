part of '../characters_screen.dart';

class _ListView extends StatelessWidget {
  _ListView(
    this.characters, {
    Key? key,
  }) : super(key: key);

  List<Character> characters;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return InkWell(
          child: CharacterListTile(characters[index]),
          onTap: () {},
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox();
      },
      itemCount: characters.length,
    );
  }
}
