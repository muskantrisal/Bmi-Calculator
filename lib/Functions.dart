import 'dart:math';

double calculatorBrain(height, weight) {
  double bmi = ((weight) / (height * height)) * 10000;
  return bmi;
}

double roundDouble(double value, int places) {
  double mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

String statement(bmi) {
  if (bmi < 18.5) {
    return "Under Weight";
  } else if (bmi < 24.5) {
    return "Healthy Weight";
  } else if (bmi < 29.9) {
    return "Over Weight";
  } else {
    return "Obese";
  }
}
