import 'package:flutter/material.dart';

extension NavigatorExt on BuildContext {
  Future<T?> pushReplacement<T extends Object?, TO extends Object?>(
    Widget pageWidget,
  ) async => Navigator.pushReplacement<T, TO>(
    this,
    MaterialPageRoute(builder: (_) => pageWidget),
  );
}
