import 'dart:math';

import 'package:flutter/material.dart';

class SenoideCurve extends Curve {
  final double count;

  SenoideCurve({ required this.count });

  @override
  double transformInternal(double t) {
    var val = sin(count * 2 * pi * t) * 0.5 + 0.5;

    return val; //f(x)
  }
}