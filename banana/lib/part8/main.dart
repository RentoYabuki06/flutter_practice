import 'package:flutter/material.dart';

void main() {
  final controller = TextEditingController();

  final textField = TextField(
    controller: controller,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'あなたの名前',
      hintText: 'カタカナで入力してください',
      errorText: '名前が長すぎます',
    ),
  );

  void onPressedButton() {
    // 適切な関数名に変更
    debugPrint(controller.text);
  }

  final button = ElevatedButton(
    onPressed: onPressedButton, // ボタンが押されたときに呼び出される関数を指定
    child: Text('button'),
  ); // セミコロンを追加

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: textField,
            ),
            button,
          ],
        ),
      ),
    ),
  );
  runApp(a);
}
