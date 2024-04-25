import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  const app = MaterialApp(home: Sample());

  // プロバイダースコープで囲っておく
  const scope = ProviderScope(child: app);

  runApp(scope);
}

// プロバイダー
final nicknameProvider = StateProvider<String>((ref) {
  // 変化するデータ
  return "ルビードッグ";
});

class Sample extends ConsumerWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // データを見張っておく
    final nickname = ref.watch(nicknameProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(nickname),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(nickname),
            ElevatedButton(onPressed: () => tapA(ref), child: const Text('A')),
            ElevatedButton(onPressed: () => tapB(ref), child: const Text('B')),
            ElevatedButton(onPressed: () => tapC(ref), child: const Text('C')),
            Text(nickname),
          ],
        ),
      ),
    );
  }

  tapA(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = "ルビーキャット";
  }

  tapB(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = "ルビーバード";
  }

  tapC(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = "ルビーウォルフ";
  }
}
