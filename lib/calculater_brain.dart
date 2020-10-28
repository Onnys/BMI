import 'dart:math';

import 'dart:wasm';

class CalculaterBrain {
  CalculaterBrain({this.weitght, this.heitght});
  final int weitght;
  final int heitght;
  double _bmi;

  String calulateBMI() {
    _bmi = (weitght / pow(heitght / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight. Good job.';
    } else {
      return 'You have lower than normal body weight. You can eat a beat more.';
    }
  }
}
