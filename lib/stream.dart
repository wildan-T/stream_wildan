import 'package:flutter/material.dart';
import 'dart:async';

class ColorStream {
  final List<Color> colors = [
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.deepPurpleAccent,
    Colors.orangeAccent,
    Colors.pinkAccent,
  ];

  Stream<Color> get getColors async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });
  }
}

class NumberStream {
  final StreamController<int> controller = StreamController<int>();
  void addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }

  close() {
    controller.close();
  }

  // addError() {
  //   controller.sink.addError("error");
  // }
}
