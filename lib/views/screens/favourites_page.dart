import 'package:do_it/providers/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavouritesPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoList = ref.watch(todoProvider);


    if (todoList.isEmpty) {
      return Center(
        child: Text('No favorites yet.'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${todoList.length} favorites:'),
        ),
        for (var pair in todoList)
          ListTile(
            leading: Icon(Icons.favorite),
            title: pair,
          ),
      ],
    );
  }
}