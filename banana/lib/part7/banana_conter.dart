import 'package:flutter/material.dart';

class BananaCounter extends StatefulWidget {
  final int number;

  const BananaCounter({Key? key, required this.number}) : super(key: key);

  @override
  _BananaCounterState createState() => _BananaCounterState();
}

class _BananaCounterState extends State<BananaCounter> {
  int _number = 0; // ウィジェットの状態としてnumberを保持

  @override
  void initState() {
    super.initState();
    _number = widget.number; // 初期値をwidget.numberで設定
  }

  @override
  Widget build(BuildContext context) {
    // バナナの画像
    final banana = Image.asset('assets/images/sushi.jpeg');

    // 数字の部分
    final text = Text(
      '$_number',
      style: const TextStyle(
        color: Colors.yellow,
        fontSize: 60,
      ),
    );

    // 横に並べる
    final row = Row(
      children: [
        banana,
        text,
      ],
    );

    // 色と大きさを決める
    final con = Container(
      color: Colors.black87,
      child: row,
    );

    // 表示するウィジェットを決定する
    return con;
  }

  void increment() {
    setState(() {
      _number++; // 状態を更新してUIを再構築
    });
  }
}
