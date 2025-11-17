import 'package:do_it/providers/todo_provider.dart';
import 'package:do_it/views/widgets/big_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoList = ref.watch(todoProvider);
    var pair = todoList.first;

    IconData icon;
    if (todoList.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Do it today"),
          Expanded(child: ListView(children: todoList,)),
          // BigCard(pair: pair),
          SizedBox(height: 10),
          CupertinoTextField(
            placeholder: "What to do?",
          )
        ],
      ),
    );
  }
}
