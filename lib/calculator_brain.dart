import 'dart:math';

class CalculatorBrain {
  double _bmi;
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getFuturePlan() {
    if (_bmi >= 25) {
      return 'Your BMI is very high .You should exercise more';
    } else if (_bmi > 18) {
      return 'Your BMI is normal .Good Job';
    } else {
      return 'Your BMI is very low .You should eat more';
    }
  }
}
