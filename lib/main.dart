import 'package:do_it/views/screens/navbar.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final appProvider = ChangeNotifierProvider((ref) => AppViewModel());
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Do it',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white54),
      ),
      home: NavBar(),
    );
  }
}

// class MyAppState extends ChangeNotifier {
//   var current = WordPair.random();
//   var favouritePairs = <WordPair>[];
//
//   void getNext() {
//     current = WordPair.random();
//     notifyListeners();
//   }
//
//   void toggleFavourite() {
//     if (favouritePairs.contains(current)) {
//       favouritePairs.remove(current);
//     } else {
//       favouritePairs.add(current);
//     }
//     notifyListeners();
//     print(favouritePairs);
//   }
// }
