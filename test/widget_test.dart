// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:testexample/main.dart';

int sum(int a, int b) {
  return a + b;
}

void main() {
  test('Sum function should calculate the sum of two integers', () {
    // Setup phase
    int a = 2;
    int b = 3;

    // Execution phase
    int result = sum(a, b);

    // Assertions
    expect(result, 5);
    expect(result.isEven, false);
  });
}
