import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int weight;
  final int height;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return 'Underweight';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Normal Weight';
    } else if (_bmi >= 25.0 && _bmi <= 29.9) {
      return 'Over Weight';
    } else {
      return 'Obese';
    }
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return 'You Are Underweight. Try To Eat More Healthy Food.';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'You Are Having Normal Weight. Congratulations To You!.';
    } else if (_bmi >= 25.0 && _bmi <= 29.9) {
      return 'You Are Over Weight. Try To Less Junk Food And Try To Exercise';
    } else {
      return 'You Are Obese!!!. Try To Exercise More And Try To Look On Your Diet.';
    }
  }
}
