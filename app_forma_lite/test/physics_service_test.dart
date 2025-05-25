import 'package:flutter_test/flutter_test.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:app_forma_lite/domain/services/physics_service.dart';

void main() {
  test('elastic collision conserves momentum magnitude', () {
    final service = PhysicsService();
    final a = Body(
        pos: Vector3.zero(),
        vel: Vector3(1, 0, 0),
        rot: Vector3.zero(),
        angVel: Vector3.zero(),
        mass: 1);
    final b = Body(
        pos: Vector3(0.01, 0, 0),
        vel: Vector3(-1, 0, 0),
        rot: Vector3.zero(),
        angVel: Vector3.zero(),
        mass: 1);
    final initial = a.vel.length + b.vel.length;
    service.tick([a, b], 0.016);
    expect((a.vel.length + b.vel.length).toStringAsFixed(2),
        initial.toStringAsFixed(2));
  });
}
