import 'package:flutter/material.dart';
import 'package:banana/part6/banana_counter.dart';

void main() {
  const bnn = BananaCounter(
    number: 888,
  );

  const a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: bnn,
      ),
    ),
  );
  runApp(a);
}
