import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text("Music"),
            centerTitle: true,
            pinned: true,
            snap: true,
            floating: true,
            backgroundColor: Theme.of(context).primaryColor,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(70),
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
                      fillColor: Colors.grey.shade500,
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
          )
        ],
      ),
    );
  }
}
