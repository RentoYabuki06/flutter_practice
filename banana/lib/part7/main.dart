// import 'package:flutter/material.dart';
// import 'package:banana/part6/banana_counter.dart';

// void main() {
//   final bnn = BananaCounter(number: 888); // final修飾子を使用してbnnをインスタンス化

//   final button = ElevatedButton(
//     onPressed: bnn.increment, // ボタンのonPressedプロパティでbnnのincrementメソッドを直接呼び出し
//     child: Text('追加'),
//   );

//   runApp(MyApp(bnn, button)); // MyAppウィジェットをランタイムに渡す
// }

// class MyApp extends StatelessWidget {
//   final BananaCounter bnn;
//   final Widget button;

//   const MyApp(this.bnn, this.button);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             bnn,
//             button,
//           ],
//         ),
//       ),
//     );
//   }
// }
