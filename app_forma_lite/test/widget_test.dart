import 'package:flutter_test/flutter_test.dart';
import 'package:app_forma_lite/main.dart';

void main() {
  testWidgets('App should build', (WidgetTester tester) async {
    await tester.pumpWidget(const FormaApp());
  });
}
