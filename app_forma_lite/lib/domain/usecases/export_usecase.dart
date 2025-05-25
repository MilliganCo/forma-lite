import 'dart:io';
import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
import 'package:path_provider/path_provider.dart';
import '../entities/scene.dart';

class ExportUseCase {
  Future<File> exportGif(List<String> framePaths) async {
    final dir = await getTemporaryDirectory();
    final out = File('${dir.path}/scene.gif');
    final input = framePaths.join('|');
    await FFmpegKit.execute(
      '-i "concat:$input" -vf fps=15,scale=512:-1 -loop 0 ${out.path}',
    );
    return out;
  }

  Future<File> exportMp4(List<String> framePaths) async {
    final dir = await getTemporaryDirectory();
    final out = File('${dir.path}/scene.mp4');
    final input = framePaths.join('|');
    await FFmpegKit.execute(
      '-i "concat:$input" -r 30 -pix_fmt yuv420p ${out.path}',
    );
    return out;
  }

  // GLB экспорт временно отключен
  Future<void> exportGlb(Scene scene, String id) async {
    throw UnimplementedError('GLB export not implemented yet');
  }
}
