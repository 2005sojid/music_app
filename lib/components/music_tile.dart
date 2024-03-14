import 'package:flutter/material.dart';

class MusicTile extends StatelessWidget {
  const MusicTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: ListTile(
        title: const Text(
          "Music name",
          style: TextStyle(fontSize: 24),
        ),
        subtitle: const Text(
          "Singer",
          style: TextStyle(fontSize: 20),
        ),
        tileColor: Theme.of(context).colorScheme.inversePrimary,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.transparent
          )
        ),
      ),
    );
  }
}
