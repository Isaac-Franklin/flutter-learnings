import 'dart:html';
import 'package:testproject/main1.dart';

import 'screens/dashboard.dart';
import 'screens/buttons.dart';
import 'screens/appbarsection.dart';
import 'screens/rowsandcolumns.dart';
import 'screens/listview.dart';
import 'screens/dynamiclistview.dart';
import 'screens/navdrawer.dart';
import 'screens/stack.dart';
import 'g4gsession/main.dart';

import 'ebook/dashboard.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: TheorySession()));
}

class MainDashboard extends StatelessWidget {
  const MainDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
