import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest('main flow', ($) async {
    // Replace later with your app's main widget
    await $.pumpWidgetAndSettle(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('app')),
          backgroundColor: Colors.blue,
        ),
      ),
    );

    expect($('app'), findsOneWidget);

    await $.native.pressHome();
  });
}
