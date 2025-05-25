import 'package:flutter_test/flutter_test.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:app_forma_lite/domain/services/physics_service.dart';
import 'package:app_forma_lite/domain/entities/figure.dart';

void main() {
  test('deformer scale restores', () {
    final service = PhysicsService();
    final deform = Body(
        pos: Vector3.zero(),
        vel: Vector3.zero(),
        rot: Vector3.zero(),
        angVel: Vector3.zero(),
        mass: 1,
        rarity: Rarity.rareDeformer);
    deform.scale = 0.5;

    for (var i = 0; i < 1000; i++) {
      service.tick([deform], 0.016);
    }
    expect(deform.scale, closeTo(1, 1e-2));
  });
}
