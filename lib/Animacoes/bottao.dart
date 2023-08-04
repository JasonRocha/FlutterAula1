// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class bottao extends AnimatedWidget {
  double top = 0;

  bottao(Animation<double> prAnimation, this.top)
      : super(listenable: prAnimation);

  @override
  Widget build(BuildContext context) {
    Animation<double> animation = this.listenable as Animation<double>;

    return Positioned(
        top: this.top,
        left: animation.value,
        child: Container(
          width: 50,
          height: 50,
        ));
  }
}