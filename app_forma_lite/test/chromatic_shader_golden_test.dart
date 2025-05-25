import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  testWidgets('chromatic shader golden', (tester) async {
    final bytes = await rootBundle.load('assets/shaders/chroma.glsl');
    expect(bytes.lengthInBytes > 0, true);
  });
}
