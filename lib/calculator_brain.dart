import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    }

    return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You are overweight. You should eat less and exercise a little more.';
    } else if (_bmi > 18.5) {
      return 'You are normal. Good job!';
    }

    return 'You are underweight. You should eat more.';
  }
}
