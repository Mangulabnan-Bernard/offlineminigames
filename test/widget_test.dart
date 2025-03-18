// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:offlineminigames/main.dart';
import 'package:offlineminigames/home_screen.dart';  // Import the HomeScreen

void main() {
  testWidgets('Splash screen navigates to HomeScreen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(CupertinoApp(
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Show SplashScreen first in the test
    ));

    // Wait for the splash screen to finish (3 seconds).
    await tester.pumpAndSettle(const Duration(seconds: 3));

    // Now, we should be in the HomeScreen
    expect(find.byType(HomeScreen), findsOneWidget); // Ensure HomeScreen is visible
  });
}

