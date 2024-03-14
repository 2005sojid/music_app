import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/music_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController = TextEditingController();

  List<MusicTile> musicTiles = [const MusicTile(), const MusicTile()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text("Music", style: TextStyle(
              color: Colors.white,
              fontSize: 24
            ),),
            centerTitle: true,
            pinned: true,
            snap: true,
            floating: true,
            backgroundColor: Theme.of(context).primaryColor,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(80),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                  child: TextField(
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                    ),
                    controller: _textController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),

                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              const BorderSide(color: Colors.transparent)),
                      //fillColor: Colors.grey.shade500,
                      filled: true,
                      prefixIcon: const Icon(Icons.search_rounded),
                      // suffixIcon: IconButton(
                      //   icon: const Icon(Icons.clear_rounded),
                      //   onPressed: _textController.clear,
                      // ),
                      hintText: "Search music...",
                      hintStyle:
                          TextStyle(fontSize: 18, color: Colors.grey.shade700),

                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              const BorderSide(color: Colors.transparent)),
                    ),
                  ),
                )),
          ),
        SliverList.list(children: musicTiles)

        ],
      ),
    );
  }
}
