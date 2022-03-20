import 'package:flutter/material.dart';

final List<String> noteDescription = [];
final List<String> noteHeading = [];
TextEditingController noteHeadingController = new TextEditingController();
TextEditingController noteDescriptionController = new TextEditingController();
FocusNode textSecondFocusNode = new FocusNode();

int notesHeaderMaxLenth = 30;
int notesDescriptionMaxLines = 30;
int notesDescriptionMaxLenth=500;
String deletedNoteHeading = "";
String deletedNoteDescription = "";


List<Color> noteColor = [
  Color(0xFFFCF55F),
  // Colors.green,
  // Colors.blue,
  // Colors.orange,
  // Colors.indigo,
  // Colors.red,
  // Colors.yellow,
  // Colors.brown,
  // Colors.teal,
  // Colors.purple,
];
List<Color> noteMarginColor = [
  Color(0xFF0437F2),
  // Colors.green,
  // Colors.blue,
  // Colors.orange,
  // Colors.indigo,
  // Colors.red,
  // Colors.yellow,
  // Colors.brown,
  // Colors.teal,
  // Colors.purple,
];