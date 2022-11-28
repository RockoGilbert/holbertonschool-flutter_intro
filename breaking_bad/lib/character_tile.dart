// ignore_for_file: non_constant_identifier_names, unnecessary_import

import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/container.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';

import 'models.dart';

class CharacterTile extends StatelessWidget {
  final Character character;
  const CharacterTile({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: GridViewBuilder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(character.imgUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              character.name,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    ));
  }

  GridViewBuilder(
      {required SliverGridDelegateWithFixedCrossAxisCount gridDelegate,
      required Container Function(BuildContext context, int index)
          itemBuilder}) {}
}
