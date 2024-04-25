import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// 準備
//   好きな画像を用意
//   assets/images に画像を追加
//   pubspec.yaml を編集 asstes パスを書く

void main() {
  // 画像
  /* 動かす環境によっては 'assets/images/sushi.jpeg' にしないと映りません */
  // final img = Image.asset(
  //   'assets/images/sushi.jpeg',
  // );

  // final img_inu = Image.network(
  //   'https://flutter-image-network.web.app/inu.jpeg',
  // );

  final con2 = Container(
    color: Colors.blue,
    width: 30,
    height: 50,
  );

  final col = Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    mainAxisSize: MainAxisSize.max,
    children: [
      con2,
      con2,
      con2,
    ],
  );

  final con = Container(
    color: Colors.deepOrange,
    width: 500,
    height: 400,
    child: col,
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.all(20),
  );

  // // ロー
  // final row = Row(
  //   mainAxisAlignment: MainAxisAlignment.center,
  //   crossAxisAlignment: CrossAxisAlignment.center,
  //   children: [img, img_inu],
  // );

  // アプリ
  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: con,
      ),
    ),
  );

  runApp(a);
}
