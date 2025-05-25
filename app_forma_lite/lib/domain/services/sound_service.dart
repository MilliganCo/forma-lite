import 'package:audioplayers/audioplayers.dart';
import '../events/collision_event.dart';
import 'physics_service.dart';

class SoundService {
  SoundService._() {
    _physics.onCollision.listen(_onCollision);
  }
  static final SoundService instance = SoundService._();
  final _cache = <String, AudioPlayer>{};
  final _physics = PhysicsService();

  Future<AudioPlayer> _player(String path, {bool loop = false}) async {
    return _cache.putIfAbsent(path, () {
      final p = AudioPlayer()..setReleaseMode(loop ? ReleaseMode.loop : ReleaseMode.stop);
      p.setSourceAsset(path);
      return p;
    });
  }

  Future<void> _onCollision(CollisionEvent e) async {
    final p = await _player('assets/sfx/noise_hit.ogg');
    p.resume();
  }

  Future<void> playAmbient(String id) async {
    (await _player('assets/ambient/$id.ogg', loop: true)).resume();
  }
}
