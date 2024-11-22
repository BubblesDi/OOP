void main() {
  // Ініціалізація класу з діапазоном [-5, 5] і кроком 0.1
  final tabulator = FunctionTabulation(-5.0, 5.0, step: 0.1);

  // Виконання табуляції функції
  tabulator.runCalc();

  // Виведення результату
  print("\nСума значень функції: ${tabulator.sum}");
}

class FunctionTabulation {
  late double rangeFrom; // Початок діапазону
  late double rangeTo;   // Кінець діапазону
  late double step;      // Крок табуляції
  double sum = 0.0;      // Сума значень функції

  /// Конструктор
  FunctionTabulation(this.rangeFrom, this.rangeTo, {this.step = 0.1});

  /// Метод для зміни діапазону
  void setRange(double from, double to) {
    rangeFrom = from;
    rangeTo = to;
  }

  /// Метод для зміни кроку
  void setStep(double newStep) {
    step = newStep;
  }

  /// Табулювання функції
  void runCalc() {
    print("y = 12 - x / 3 + x^2\n");

    for (double x = rangeFrom; x <= rangeTo; x += step) {
      double y = _calc(x);
      print("x = $x, y = $y");
      sum += y;
    }
  }

  /// Обчислення значення функції
  double _calc(double x) {
    return 12 - x / 3 + x * x;
  }
}
