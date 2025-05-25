import 'dart:collection';

class FrameState {
  FrameState(this.timestamp, this.snapshot);
  final DateTime timestamp;
  final Map<String, dynamic> snapshot;  // {pos, rot, scale}
}

class ReplayBuffer {
  ReplayBuffer({this.duration = const Duration(seconds: 30)});
  final Duration duration;
  final ListQueue<FrameState> _frames = ListQueue();

  void add(FrameState f) {
    _frames.addLast(f);
    while (_frames.isNotEmpty &&
        DateTime.now().difference(_frames.first.timestamp) > duration) {
      _frames.removeFirst();
    }
  }

  Iterable<FrameState> get frames => _frames;
}
