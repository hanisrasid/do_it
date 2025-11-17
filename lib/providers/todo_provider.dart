import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const List<ListTile> todoList = [
  ListTile(leading: Icon(Icons.map), title: Text('Map')),
  ListTile(leading: Icon(Icons.photo_album), title: Text('Album')),
  ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
];

final todoProvider = Provider((ref) {
  return todoList;
});