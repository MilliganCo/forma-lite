import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:app_forma_lite/presentation/screens/inventory/inventory_screen.dart';

void main() {
  testWidgets('inventory golden', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: InventoryScreen()));
    await expectLater(
      find.byType(InventoryScreen),
      matchesGoldenFile('assets/goldens/inventory_grid.png'),
    );
  });
}
