import 'package:flutter/material.dart';
import 'package:catfact/Injection.dart';

import 'App.dart';

void main() async {
  await configureDependencies();
  runApp(const App());
}
