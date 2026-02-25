import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'ui/screens/library/library_screen.dart';

/// Launch the application with the given list of providers
void mainCommon(List<SingleChildWidget> providers) {
  runApp(
    MultiProvider(
      providers: providers,
      child: const MaterialApp(
        home: LibraryScreen(),
      ),
    ),
  );
}