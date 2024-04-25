import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final header = DrawerHeader(
      child: Text('ドロワーヘッダー'),
    );

    final tileA = ListTile(
      title: Text('リストタイル A'),
    );
    final tileB = ListTile(
      title: Text('リストタイル B'),
    );
    final tileC = ListTile(
      title: Text('リストタイル C'),
    );
  }
}
