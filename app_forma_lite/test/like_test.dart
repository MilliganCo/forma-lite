import 'package:flutter_test/flutter_test.dart';

void main() {
  test('dummy like increment', () {
    var likes = 0;
    likes++;
    expect(likes, 1);
  });
}
