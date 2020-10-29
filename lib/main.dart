import 'package:flutter/material.dart';
import 'package:notekeeper/Screen/NoteList.dart';
import 'Screen/NoteList.dart';
void main() {

runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note_keeper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.deepPurple
      ),
      home:NoteList(),
      
    );
  }
}
