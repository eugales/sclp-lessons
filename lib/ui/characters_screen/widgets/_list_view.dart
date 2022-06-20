part of '../characters_screen.dart';

class _ListView extends StatelessWidget {
  _ListView({
    Key? key,
    required this.characters,
  }) : super(key: key);

  List<Character> characters;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return InkWell(
          child: CharacterListTile(character: characters[index]),
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
