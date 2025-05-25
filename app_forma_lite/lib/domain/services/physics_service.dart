import 'package:vector_math/vector_math_64.dart';

class Body {
  Vector3 pos, vel, rot, angVel;
  double mass;
  Body({
    required this.pos,
    required this.vel,
    required this.rot,
    required this.angVel,
    required this.mass,
  });
}

class PhysicsService {
  void tick(List<Body> bodies, double dt) {
    for (final b in bodies) {
      b.pos += b.vel * dt;
      b.rot += b.angVel * dt;
    }
    _resolveCollisions(bodies);
  }

  void _resolveCollisions(List<Body> bodies) {
    for (var i = 0; i < bodies.length; ++i) {
      for (var j = i + 1; j < bodies.length; ++j) {
        final a = bodies[i], b = bodies[j];
        final delta = b.pos - a.pos;
        if (delta.length2 < 1e-2) {
          final normal = delta.normalized();
          final relativeVel = b.vel - a.vel;
          final impulse = 2 * relativeVel.dot(normal) / (1/a.mass + 1/b.mass);
          a.vel += normal * (impulse/a.mass);
          b.vel -= normal * (impulse/b.mass);
        }
      }
    }
  }
}
