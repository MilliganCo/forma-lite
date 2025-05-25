import 'dart:async';
import 'package:vector_math/vector_math_64.dart';
import '../events/collision_event.dart';
import '../entities/figure.dart';

class Body {
  Vector3 pos, vel, rot, angVel;
  double mass;
  double scale;
  final Rarity rarity;
  Body({
    required this.pos,
    required this.vel,
    required this.rot,
    required this.angVel,
    required this.mass,
    this.scale = 1,
    required this.rarity,
  });
}

class PhysicsService {
  final _collisionCtrl = StreamController<CollisionEvent>.broadcast();
  Stream<CollisionEvent> get onCollision => _collisionCtrl.stream;

  void tick(List<Body> bodies, double dt) {
    for (final b in bodies) {
      b.pos += b.vel * dt;
      b.rot += b.angVel * dt;

      // Восстановление деформера
      if (b.scale < 1 && b.rarity == Rarity.rareDeformer) {
        b.scale = (b.scale + 0.005).clamp(0.1, 1);
      }
    }
    _resolveCollisions(bodies);
  }

  void _resolveCollisions(List<Body> bodies) {
    for (var i = 0; i < bodies.length; ++i) {
      for (var j = i + 1; j < bodies.length; ++j) {
        final a = bodies[i], b = bodies[j];
        final delta = b.pos - a.pos;
        if (delta.length2 < 1e-2) {
          _collisionCtrl.add(CollisionEvent('$i', '$j'));
          final normal = delta.normalized();
          final rel = b.vel - a.vel;
          final impulse = 2 * rel.dot(normal) / (a.mass + b.mass) * -1;
          a.vel += normal * (impulse / a.mass);
          b.vel -= normal * (impulse / b.mass);

          if (a.rarity == Rarity.rareDeformer) b.scale *= 0.9;
          if (b.rarity == Rarity.rareDeformer) a.scale *= 0.9;
        }
      }
    }
  }
}
