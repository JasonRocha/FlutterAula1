import 'package:flutter/material.dart';

class AnimatedCar extends AnimatedWidget {
  double top = 0;

  AnimatedCar(Animation<double> prAnimation, this.top)
      : super(listenable: prAnimation);

  @override
  Widget build(BuildContext context) {
    Animation<double> animation = this.listenable as Animation<double>;

    return Positioned(
        top: this.top,
        left: animation.value,
        child: Image.asset("assets/car.png", width: 100,));
  }
}
