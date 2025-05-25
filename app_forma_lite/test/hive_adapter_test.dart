import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:path_provider_platform_interface/method_channel_path_provider.dart';
import 'package:app_forma_lite/data/hive/figure_adapter.dart';
import 'package:app_forma_lite/domain/entities/figure.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  PathProviderPlatform.instance = MethodChannelPathProvider();

  test('hive roundtrip', () async {
    final dir = await Hive.initFlutter();
    Hive
      ..registerAdapter(RarityHiveAdapter())
      ..registerAdapter(FigureHiveAdapter());
    final box = await Hive.openBox('figs', path: dir.path);
    final fig = Figure(
        id: '1',
        shape: 'cube',
        baseMaterial: {'color': '#fff'},
        rarity: Rarity.rareChromatic);
    await box.put('1', fig.toHive());
    final back = (box.get('1') as FigureHive).toModel();
    expect(back.rarity, Rarity.rareChromatic);
  });
}
